% Ejercicio 9:==================================================================
% Funciones analiticamente equivalentes pero cuya evaluacion en ciertos valores
% conducen a valores con errores grandes
% Para valores cercanos a cero f2 permite obtener el resultado aproximado mientras
% que para valores cercanos a pi f1 aproxima mejor la solucion.
%===============================================================================
clear; close all; clc

f1 =@(x)(1 - cos(x))/x/x;
f2 =@(x) sin(x)*sin(x)/x/x/(1 + cos(x));

for k = 0:1 % k = 0: analiza aproximandose a cero, k = 1 aproximandose a pi.  
    x = k*pi; 
    tmp = 1;
    for k1 = 1:8
        tmp = tmp*0.1; 
        x1 = x + tmp;
        fprintf('En x = %10.8f, \n', x1)
        fprintf('f1(x) = %18.12e; f2(x) = %18.12e \n', f1(x1),f2(x1));
    end
end
