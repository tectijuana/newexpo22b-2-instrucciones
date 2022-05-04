/*---------------------------------------------------*/
/*		Solución en C			     */
/*---------------------------------------------------*/
/*
#include <stdio.h>

Programa que despliega un mensaje cuando se recibe una calificación
Fecha: 03 de mayo del 2022.

int main()
{
   int nota;
   printf("Inserte una nota:"); scanf("%d",&nota);
   switch(nota) {
      case 0: case 1: case 2: case 3: case 4:   case 5: case 6: printf("\nReprobado :("); break;
      case 7: printf("\nAprobado"); break;
      case 8: printf("\nBien"); break;
      case 9: printf("\nNotable"); break;
      case 10: printf("\nSobresaliente"); break;
      default: printf("esa nota es incorrecta");
   }

   return 0;
}
*/


/*---------------------------------------------------*/
/*	Solución en Assembler (sin limpiar)	     */
/*---------------------------------------------------*/
/*
	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"programaexpo.c"
	.text
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Inserte una nota:\000"
	.align	2
.LC1:
	.ascii	"%d\000"
	.align	2
.LC2:
	.ascii	"\012Reprobado :(\000"
	.align	2
.LC3:
	.ascii	"\012Aprobado\000"
	.align	2
.LC4:
	.ascii	"\012Bien\000"
	.align	2
.LC5:
	.ascii	"\012Notable\000"
	.align	2
.LC6:
	.ascii	"\012Sobresaliente\000"
	.align	2
.LC7:
	.ascii	"esa nota es incorrecta\000"
	.text
	.align	2
	.global	main
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	ldr	r0, .L11
	bl	printf
	sub	r3, fp, #8
	mov	r1, r3
	ldr	r0, .L11+4
	bl	__isoc99_scanf
	ldr	r3, [fp, #-8]
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L2
.L4:
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L7
	.word	.L6
	.word	.L5
	.word	.L3
.L8:
	ldr	r0, .L11+8
	bl	printf
	b	.L9
.L7:
	ldr	r0, .L11+12
	bl	printf
	b	.L9
.L6:
	ldr	r0, .L11+16
	bl	printf
	b	.L9
.L5:
	ldr	r0, .L11+20
	bl	printf
	b	.L9
.L3:
	ldr	r0, .L11+24
	bl	printf
	b	.L9
.L2:
	ldr	r0, .L11+28
	bl	printf
.L9:
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L12:
	.align	2
.L11:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.size	main, .-main
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits8*/

/*---------------------------------------------------*/
/*		Sección de datos		     */
/*---------------------------------------------------*/
mensaje:	.ascii	"Inserte una nota:\000"
nota:		.ascii	"%d\000"
res1:		.ascii	"\012Reprobado :(\000"
res2:		.ascii	"\012Aprobado\000"
res3:		.ascii	"\012Bien\000"
res4:		.ascii	"\012Notable\000"
res5:		.ascii	"\012Sobresaliente\000"
error:		.ascii	"esa nota es incorrecta\000"
/*---------------------------------------------------*/
/*		Solución en Assembler		     */
/*---------------------------------------------------*/
.text
.global	main
main:	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	ldr	r0, =mensaje
	bl	printf
	sub	r3, fp, #8
	mov	r1, r3
	ldr	r0, =nota
	bl	__isoc99_scanf
	ldr	r3, [fp, #-8]
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L2
.L4:	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L7
	.word	.L6
	.word	.L5
	.word	.L3
.L8:	ldr	r0, =res1
	bl	printf
	b	.L9
.L7:	ldr	r0, =res2
	bl	printf
	b	.L9
.L6:	ldr	r0, =res3
	bl	printf
	b	.L9
.L5:	ldr	r0, =res4
	bl	printf
	b	.L9
.L3:	ldr	r0, =res5
	bl	printf
	b	.L9
.L2:	ldr	r0, =error
	bl	printf
.L9:	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	pop	{fp, pc}
