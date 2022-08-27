% Ejercicio 1: ajustes por minimos cuadrados ==================================
% a) lineal, b) polinomica de orden 2, c) potencial, d) exponecial
% =============================================================================
clc; clear all; close all;

x = [0.1:0.1:0.5];
y = [2.0 2.9 5.0 6.7 12.0];
x0 = [x(1):0.01:x(end)];

% a) ajuste lineal:
coef_lineal = polyfit(x, y, 1);
ajuste_lineal = polyval(coef_lineal,x0);

% b) polinomio de orden 2:
coef_cuad = polyfit(x, y, 2);
ajuste_cuad = polyval(coef_cuad, x0);

% c) potencial: 
coef_pot = polyfit(log(x), log(y), 1);
ajuste_pot_inter = polyval(coef_pot, log(x0));
ajuste_pot = exp(ajuste_pot_inter);

% d) exponencial:
coef_exp = polyfit(x, log(y), 1);
ajuste_exp_inter = polyval(coef_exp, x0);
ajuste_exp = exp(ajuste_exp_inter);

figure 1
plot(x, y, '*');
hold on
plot(x0, ajuste_lineal, 'c')
plot(x0, ajuste_cuad, 'm')
plot(x0, ajuste_pot, 'b')
plot(x0, ajuste_exp, 'g')
legend('pares ordenados', 'lineal', 'cuadratico', 'potencial', 'exponencial')
title('Ajuste por minimos cuadrados')
