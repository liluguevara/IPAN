% Ejercicio 2: ajuste por minimos cuadrados de orden 1, 2 y 3 ==================

clc; clear all; close all;

% datos de entrada:
x = [-1.0 -0.5 2.0 2.25 4.0 5.0];
y = [9.1 6.0 -3.5 -3.3 -0.9 2.5];
x0 = [x(1):0.01:x(end)];

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