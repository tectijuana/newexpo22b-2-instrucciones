# Instrucciones de ARM Assembly

Las instrucciones son aquellas operaciones realizadas por la CPU que también se llama mnemónicos.
<br>
**_<Operación>{Condición}{S} Rd, Rn, Op2_**
<br>

 - <Operación>: instrucción a realizar
 - {Condición}: condicional a
   aplicar
  - {S}: si la ejecución modificará las banderas del CPSR 
  - Rd: registro destino 
  - Rn: registro cualquiera 
  - Op2: operaciones a aplicar a Rn
   
  

## Directivas (Pseudo-instrucciones)
Asisten y controlan procesos del ensamblador; cambian la manera en como se ensambla el código.
<br>

  

 - Thumb: se escribe al principio del archivo. Indica que el código
   subsecuente se interprete en modo Thumb 
  - Code: denota una sección a
   analizar para la ROM 
  - Data: denota variables globales a almacenar en RAM 
  - Área: indica al ensamblador que ensamble el código de las secciones destacadas 
  - Space: reserva un bloque de memoria y lo rellena de ceros 
  - Export: hace a un objeto de código accesible desde otro archivo 
  - Global: = Export 
  - Import: accede a un objeto exportado de código 
  - .text: permite al código ensamblador ser llamado como un  procedimiento desde el lenguage C 
  - End: fin del archivo
   

## Aritmética/Lógicas
- AND		AND lógico
- EOR		XOR lógico
- ORR   	OR lógico 
- SUB		Substraer (Resta)
- RSB		Sustraer en reversa 
- ADD		Suma
- ADC		Suma con acarreo
- SBC		Resta con acarreo
- RSC		Resta reversa con acarreo

## De comparación

Todas estas operaciones actualizan las banderas del CPSR. No almacenan el resultado de la operación comparativa.
<br>

- CMN		Comparar negativo
- TST		Test
- TEQ		Test equivalente
- CMP		Comparar

## De movimiento de datos

Copia valores indicados como constante o registro del rango de [0, 255] (8 bits)* al registro indicado.
<br>

- MVN		Mover negado
- MOV		Mover


## De carga y almacenamiento de registros

Utilizan de manera exhaustiva las direcciones de registros para cargar y almacenar datos. Frecuentemente, se usan junto al offset.
- LDR		Cargar
- STR		Almacenar

## Misceláneos

Específicamente hablaremos de:
- SWI				Interrupción de software
- LSL y LSR		Bit-shifts lógicos 
- PUSH y POP		Manejo del Stack de memoria

<br>
_SWI				Interrupción de software_
Permite al código ensamblador el poder comunicarse con el Kernel del sistema operativo. Utiliza r7 para almacenar la llamada concreta al Kernel para indicar qué hacer:
<br>
	Si r7 = 0 entonces se llama una salida del programa
  <br>
	Si r7 = 4 entonces se llama a una impresión del sistema
<br>
_LSL y LSR		Bit-shifts lógicos_
<br>
Mueven los bits del registro indicado, una cierta cantidad de espacios. El tipo más básico son los lógicos. Estos son LSL (Left shift, traslación hacia la izquierda) y LSR (Right shift, traslación a la derecha). Muy usados como Op2 de las instrucciones anteriores.
<br>
_PUSH y POP		Manejo del Stack de memoria_
<br>
Permiten manejar la estructura dinámica del Stack (Pila).  PUSH empuja registros en el tope de esta; con POP se eliminan registros del tope
<br>

## Conclusión

A pesar que la arquitectura ARM esté empleando el conjunto de instrucciones RISC, se puede encontrar una gran cantidad de operaciones que permiten desarrollar programas más eficientes y más legibles.
