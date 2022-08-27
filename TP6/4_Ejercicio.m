% Ejercicio 4 ==================================================================
% Al no contar con la funcion no podriamos en principio resolver la integral 
% mediante cuadratura. Simpson: subintervalos pares, cantidad de puntos impares:
% luego con el metodo de Simpson no puedo calcular la integral de todo el intevalo
% ==============================================================================
clc; clear all;
% datos de entrada:
x = [0.0:0.1:0.5];
y = [1.0 7.0 4.0 3.0 5.0 2.0];
h = x(2) - x(1);

int_trap_comp = integral_trapecio_compuesto_potente(y,h);
fprintf('La integral mediante trapecio compuesto es %f \n', int_trap_comp)