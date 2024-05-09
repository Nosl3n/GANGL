# GANGL - FUNCION GAUSSIANA ASIMETRICA DE N GRADOS DE LIBERTAT

Este repositorio contiene las diferenctes versiones de GANGL

## Requisitos

- **Matlab:** Este repositorio ha sido probado en MATLAB y es compatible tanto con MATLAB en la versión de escritorio como con MATLAB Online.


## SOBRE LAS VERSIONES 

1. **GANGL_V01**
  
   La primera versión de este modelo carece del conceptos de orientación de grupo, ya que siempre considera al primer individuo como referencia (y este no siempre sera el mismo). Además, las varianzas madre se calculan teniendo en cuenta tanto el seno como el coseno de la distancia de cada persona al centro del grupo.
   Este modelo fue implementado y probado en Robocomp: `https://github.com/Nosl3n/Robolab_proxemicG.git` 

   
2. **GANGL_V02**

   Se ha mejorado significativamente la generación de las funciones gaussianas en el código. Se ha eliminado el concepto de seno y coseno para las varianzas madre, y ahora solo se considera la distancia de estas al centro del grupo. Además, se ha introducido una varianza mínima de 0.5, lo que ha producido resultados satisfactorios en las pruebas realizadas.
    
3. **GANGL_V03**

   Se ha introducido el concepto de orientación del grupo en el código. Esta orientación se determina mediante una suma de vectores, y se calcula la orientación al individuo más cercano en sentido antihorario a la suma resultante. Además, se realizan pruebas de giro para determinar si la distribución gaussiana resultante es la misma en todos los casos.
    
4. **GANGL_V04:**

   Esta versión del código combina tanto el algoritmo propuesto como el algoritmo de Raphael, generando una versión combinada que aprovecha las fortalezas de ambos enfoques.
    