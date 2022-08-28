# Ejemplo funcionamiento funciones decimales correctos y cifras significativas =
# En MATLAB la funcion round permite calcular el redondeo utilizando las opciones 
# 'decimals' (round(x,d, 'decimal')) y 'significants' 
# (round(x,d, 'significant')). Pero no funciona al menos mi version de OCTAVE,
# pero también puede se facilmente implementadas como se muestra en las 
# respectivas funciones. 
clc; clear all; 

ddc = 5; # cantidad de decimales correctos
dcs = 3; # cantidad de cifras significativas
x = 0.00147454; 

xdc_funcion = decimales_correctos(ddc,x)
dcs_funcion = cifras_significativas(dcs,x)



