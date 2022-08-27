% Ejercicio adicional ==========================================================
% El conjunto de medidas se encuentra en el archivo adjunto ejer_adicional.txt
% ==============================================================================
clc; clear all; close all;
% cargo los datos con textscan porque el archivo tiene una linea de encabezado
fid = fopen('ejer_adicional.txt', 'rt');
data = textscan(fid, '%f %f', 'HeaderLines', 1);
fclose(fid);
x = data{1};
y = data{2};
x0 = x(1):0.01:x(end);

% grafico los datos para decidir el ajuste
figure 1
plot(x, y, 'b')
hold on

%realizamos un ajuste exponencial
coef_exp = polyfit(x, log(y), 1);
ajuste_exp_inter = polyval(coef_exp, x0);
ajuste_exp = exp(ajuste_exp_inter);

%realizamos un ajuste cuadratico
coef_cuad = polyfit(x, y, 2);
ajuste_cuad = polyval(coef_cuad, x0);

plot(x0, ajuste_exp, 'm')
plot(x0, ajuste_cuad, 'c')
legend('datos', 'ajuste exponencial', 'ajuste cuadratico')
title('Ajuste por minimos cuadrados')
xlabel('I')
ylabel('V')

% Del grafico se observa que el ajuste cuadratico funciona mejor que el exponencial.

% Si queremos hacer un ajuste lineal sin termino independiente para que se cumpla:
% V = IR, tenemos que b = 0, p(x) = a*x
% Ec = sum(y - a*x)^2
% derivamos respecto de a e igualamos a cero y despejamos a, con lo que obtenemos:
% a = sum(x*y)/x^2

a = sum(x.*y)/sum(x.^2);
ajuste_lineal = a*x0;
fprintf('La resistividad estimada mediante el ajuste lineal V=IR es %f \n', a)
figure 2
plot(x, y, 'b')
hold on
plot(x0, ajuste_lineal, 'c')
legend('datos', 'ajuste lineal V=IR')
title('Ajuste por minimos cuadrados')
