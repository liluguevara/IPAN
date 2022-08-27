% Ejercicio 3c: ajuste por minimos cuadrados ===================================
% La funcion de la cual provendrian los puntos es f(x) = a*x/(b+x). Dicha funcion 
% no es lineal respecto de los coeficientes, pero podemos calcular el ajuste de 
% la funcion inversa g(x) = (b+x)/(a*x) = b/(a*x) + 1/a  = (b/a)*t + 1/a 
% donde t = 1/x y haciendo c = b/a y d = 1/a tenemos g(x) = c*t + d
% Luego, del ajuste por minimos cuadrados lineal, el primer coeficiente es c y el 
% segundo coeficiente es d. Finalmente recordar que la funcion que queriamos 
% ajustar es 1./g(x).
% ==============================================================================
clc; clear all; close all;

f =@(x) 1.0*x./(2.0+x); % tomo a = 1.0 y b = 2.0

x = [-1:0.4:5]; % al utilizar la funcion inversa el cero no puede estar en x
y = f(x);
x0 = [x(1):0.01:x(end)];

coef = polyfit(1./x, 1./y, 1);
c = coef(1);
d = coef(2);
inv_y0 = c./x0 + d; % tambien se podria hacer directamente inv_y0 = polyval(coef, 1./x0)
y0 = 1./inv_y0;

figure (1)
plot(x, y, '*')
hold on 
plot(x0,y0, 'c')
legend('pares ordenados', 'ajuste linealizado')
title('Ajuste por minimos cuadrados') 