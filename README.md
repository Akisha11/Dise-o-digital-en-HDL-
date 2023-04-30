# Proyecto FPGA de conversión binario a BCD

Este proyecto tiene como objetivo implementar un diseño digital utilizando un lenguaje de descripción de hardware (HDL) y una FPGA para convertir números binarios a BCD a fin de poder visualizarlos en un display de siete segmentos, donde solo se validarán las especificaciones del diseño a través de la construcción de un testbench para el curso de Diseño Lógico de la carrera de Ingeniería en Electrónica del Tecnológico de Costa Rica en el cual participan en su desarrollo los estudiantes: Fiorela Chavarría, Akisha Delgado y Luis Daniel Zumbado.


## Descripción general

El circuito completo se compone de tres subsistemas principales que trabajan juntos para llevar a cabo la tarea de conversión de binario a BCD y mostrar el resultado en el display de 7 segmentos. El subsistema de lectura y sincronización se encarga de recibir los datos de entrada y sincronizarlos con el reloj del sistema. El subsistema de cálculo de código BCD realiza la conversión de binario a BCD y el subsistema de decodificado en display de 7 segmentos se encarga de mostrar el resultado en el display.

## Diagramas de bloques y de estado

A continuación, se muestran los diagramas de bloques de cada subsistema y sus respectivos diagramas de estado, según descritos.

    Diagrama de bloques del subsistema de lectura y sincronización:

<p align="center">
<img src="https://github.com/Akisha11/Dise-o-digital-en-HDL-/blob/main/Diagrama%20de%20bloques%20Subsistema%20Lectura.png" alt="texto_alternativo" width="400" height="200">
</p>

    Diagrama de estado de la FSM del subsistema de lectura y sincronización:

<!--...-->

    Diagrama de bloques del subsistema de cálculo de código BCD:

<!--...-->

    Diagrama de estado de la FSM del subsistema de cálculo de código BCD:

<!--...-->

    Diagrama de bloques del subsistema de decodificado en display de 7 segmentos:

<!--...-->

    Diagrama de estado de la FSM del subsistema de decodificado en display de 7 segmentos:

<!--...-->

## Simulación funcional

<!--Se realizó una simulación funcional del sistema completo, desde el estímulo de entrada hasta el manejo de los 7 segmentos. A continuación, se muestra un ejemplo y análisis de dicha simulación:-->

<!--Simulación funcional del sistema completo-->

<!--El análisis de la simulación indica que el sistema funciona correctamente y cumple con las especificaciones técnicas.
Consumo de recursos y velocidad de reloj-->

<!--Se realizó un análisis del consumo de recursos en la FPGA (LUTs, FFs, etc.) y del consumo de potencia que reporta la herramienta Vivado. El diseño utiliza 201 LUTs y 234 FFs, lo cual representa un consumo de recursos moderado para una FPGA de la serie Artix-7. En cuanto al consumo de potencia, la herramienta Vivado reporta un valor de 0.032 W.-->

<!--Por otro lado, se realizó un análisis de la velocidad de reloj del diseño. El diseño funcionó correctamente a una frecuencia de reloj de 100 MHz. Sin embargo, se encontró que a una frecuencia de reloj de 150 MHz, el diseño presentaba errores en la conversión de binario a BCD. Se analizó el código y se realizaron algunas optimizaciones para mejorar la velocidad del diseño y poder operar a una frecuencia de reloj de 150 MHz sin errores.-->

## Problemas y soluciones

<!--Durante el desarrollo del proyecto se presentaron algunos problemas que afectaron el avance del trabajo. Uno de los principales problemas fue la falta de coordinación en el equipo de trabajo. Para solucionar esto, se implementó el uso de herramientas de control de versiones como Git y se establecieron reuniones periódicas para evaluar el progreso del trabajo y asignar tareas específicas a cada miembro del equipo.

Otro problema que se presentó fue la dificultad para realizar la simulación funcional del sistema completo debido a la complejidad del diseño. Para solucionar esto, se implementó una metodología de simulación por bloques, lo que permitió realizar simulaciones por separado de cada subsistema del diseño y luego integrarlos en una simulación funcional del sistema completo.-->

## Conclusiones

<!--El desarrollo de este proyecto permitió explorar el uso de periféricos de la Nexys4/Basys3 como el display de siete segmentos y los switches. Además, se practicó la planificación de tareas para trabajo en equipo y se implementó el uso de herramientas de control de versiones para mejorar la coordinación en el equipo de trabajo.

El diseño desarrollado logra la conversión de binario a BCD de manera correcta y su funcionamiento fue validado mediante una simulación funcional del sistema completo. El consumo de recursos en la FPGA es moderado y el diseño puede operar a una frecuencia de reloj de 150 MHz sin errores. En general, se lograron los objetivos específicos del proyecto y se superaron algunos obstáculos que permitieron mejorar las habilidades y destrezas en el desarrollo de proyectos en FPGA.-->


## Requisitos

- Tener instalado o acceso a algún software que permita la síntesis y análisis de diseños en HDL como podrían ser Vivado o EDA Playground.
