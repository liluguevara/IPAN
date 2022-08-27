% Problemas de valor de contorno - condiciones mixtas ==========================
# donde y'' + p(x)y' + q(x)y = r(x)
clc; clear all; close all;

% Dominio:
% x = a:h:b;
a = 0.0;
b = 1.0;
h = 0.2;
% Ecuacion diferencial ordinaria de segundo orden:
% y''(x) + p(x)*y'(x) + q(x)*y(x) = r(x)
p = @(x) -2;
q = @(x) 1;
r = @(x) 2*exp(x);

% Condiciones de borde:
% a1*y(a) + b1*y'(a) = c1
% a2*y(b) + b2*y'(b) = c2
a1 = 1;
b1 = -2;
c1 = 3;
a2 = 1;
b2 = 1;
c2 = 6*exp(1);

[x,y] = diferencias_finitas_combinadas(a,b,h,a1,b1,c1,a2,b2,c2,p,q,r);

figure 1
plot(x,y,'oc')




