# Ejercicio 9: ecuacion diferencial con condiciones de contorno de Dirichlet ===
# donde y''= p(x)y' + q(x)y + r(x)
clc; clear all; close all;
% parametros de entrada:
p = @(x) 0.0;
q = @(x) 1.0;
r = @(x) x;
h = 0.2;
a = 0.0;
b = 1.0;
w0 = -2.0;
wn = 1; 
[x,w] = diferencias_finitas_dirichlet(a,b,h,w0,wn,p,q,r);

figure 1
plot(x,w, '-*c')
title('Solucion numerica de y"= y + x')

