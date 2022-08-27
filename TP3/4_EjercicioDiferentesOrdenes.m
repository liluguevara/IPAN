% ejercicio4: analisis del comportamiento de la aproximacion a una funcion al 
% aumentar el grado del polinomio
%===============================================================================
clc;clear;close all;

f = @(x) 2.0./(1.0 + x.^2);        
x = [-5.0 -3.75 -2.5 -1.25 0.0 1.25 2.5 3.75 5.0];
y = f(x);

n1 = [true false false false true false false false true]; % 3 puntos
n2 = [true false true false true false true false true];   % 5 puntos
n3 = [true true true true true true true true true];       % 9 puntos
orden1 = sum(n1)-1;
orden2 = sum(n2)-1;
orden3 = sum(n3)-1;

xval = [-5.0:0.001:5.0]';

coef1 = newton_adelante_coef(x(n1), y(n1));
coef2 = newton_adelante_coef(x(n2), y(n2));
coef3 = newton_adelante_coef(x(n3), y(n3));

yval1 = eval_Newton_ad(coef1, x(n1), xval);
yval2 = eval_Newton_ad(coef2, x(n2), xval);
yval3 = eval_Newton_ad(coef3, x(n3), xval);

figure(1)
plot(xval,f(xval), '*')
hold on
grid on
plot(xval,yval1, 'r')
plot(xval,yval2, 'b')
plot(xval,yval3, 'g')
legend('Funcion analitica', num2str(orden1), num2str(orden2), num2str(orden3))
title('Polinomios interpolantes mediante diferencias divididas hacia adelante')