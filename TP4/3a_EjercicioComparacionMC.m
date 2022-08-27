% Ejercicio 3b: comparacion con ejercicio 1 donde la resolucion fue analitica ==
% ajuste por minimos cuadrados mediante la funcion polyfit de polinomios de orden
% 1, 2 y 3.
% Si aumento un grado mas el polinomio de ajuste, 
% que representa el polinomio encontrado?   
% ==============================================================================
clc;clear all; close all;

% datos de entrada:
x = [0.1:0.1:0.5];
y = [2.0 2.9 5.0 6.7 12.0];
x0 = [x(1):0.01:x(end)]; % defino el arreglo en el que voy a evaluar los polinomios de ajuste

% calculo los ajustes de diferente orden
coef1 = polyfit(x, y, 1);
pol1 = polyval(coef1, x0);

coef2 = polyfit(x , y, 2);
pol2 = polyval(coef2, x0);

coef3 = polyfit(x, y, 3);
pol3 = polyval(coef3, x0);

figure (1)
plot(x, y, '*')
hold on
plot(x0, pol1, 'c')
plot(x0, pol2, 'm')
plot(x0, pol3, 'b')
title('Ajustes por minimos cuadrados')
legend('pares ordenados', 'lineal', 'cuadratico', 'cubico')

