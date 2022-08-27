% Funciones: ejercicio 5b ======================================================
% Evaluacion de una funcion de usuario
% ==============================================================================
% comandos que limpian las variables del espacio de trabajo 
clear; clc; 
% defino el paso y el arreglo con los valores de x en los que se evaluara la funcion
paso = 0.5;
val = [-30.0:paso:30.0];

% llamo a la funcion de usuario
ev = funcion_trozos(val);

figure 1
plot(val,ev, '-*')
title('Funcion a trozos')
