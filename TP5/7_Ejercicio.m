% Ejercicio 7 ==================================================================
% a) pendinte ==================================================================
% b) valor exacto con f(x) = exp(x)/x, error absoluto y porcentual =============
% c) todo nuevamente con h = 0.1 ===============================================

clc; clear all;
% funcion analitica 
f = @(x) exp(x)./x;
df = @(x) exp(x)./x - exp(x)./x.^2;
% datos de entrada a)
x = [0.5:0.25:2.5];
y = [3.2974, 2.8227, 2.7183, 2.7923, 2.9878, 3.2883, 3.6945, 4.2168, 4.8730];
h = x(2)-x(1);
% datos para b)
% datos entrada b)
der_exacta = df(x);
% datos para c)
hc = 0.1;
xc = [x(1):hc: x(end)];
yc = f(xc);
der_exactac = df(xc);

% a)
pendiente = der_primera_centrada(y, h);

% b) 
error_abs = abs(der_exacta - pendiente);
error_porcentual = 100.0*error_abs./abs(pendiente);

fprintf('par ordenado, pendiente, error absoluto y error porcentual con paso %.2f es: \n', h)
fprintf('(%f,%f), %f, %f, %f \n', [x; y; pendiente; error_abs; error_porcentual])

% c)
pendientec = der_primera_centrada(yc, hc);
error_absc = abs(der_exactac - pendientec);
error_porcentualc = 100.0*error_absc./abs(pendientec);

fprintf('par ordenado, pendiente, error absoluto y error porcentual con paso %.2f es: \n', hc)
fprintf('(%f, %f), %f, %f, %f \n', [xc; yc; pendientec; error_absc; error_porcentualc])

% Que sucede en (1.0, 2.718282)? Graficar la funcion puede ser de ayuda:
figure 1
plot(xc, yc)
title('exp(x)/x')

% En 1.0, 2.718282) la pendiente es cero, es un punto de inflexion y luego la 
% derivada analitica (der_exacta y der_exactac) en ese punto es nula.