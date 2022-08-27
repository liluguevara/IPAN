%ejercicio 3: Fenómeno de Runge ================================================
% contar que observa para los polinomios de ordenes muy grandes=================
clc;clear;close all;

f =@(x) abs(x) + x./2 + x.^(2);
npuntos = 20; # 10; 80; 4

x = linspace( -1.0, 1.0, npuntos); % v = linspace( inicio, fin, num_elementos) 
                             % para generar un vector con puntos equiespaciados
                             % modifico npuntos para probar los diferentes casos
y = f(x); % evaluo la funcion en x
x0 = [x(1):0.001:x(end)]; % defino el vector para evaluar los polinomios 
m = length(x0);

tic
for k = 1:m  % como la funcion lagrange_inter calcula la interpolacion en un punto utilizo
             % un bucle para recorrer todo el intervalo 
p_lagrange(k) = lagrange_inter(x,y,x0(k)); 
endfor
toc

figure(1)
plot(x0,f(x0), 'c')
hold on
plot(x0,p_lagrange, 'm')
legend('Solucion analitica', 'Interpolacion Lagrage')
str = sprintf("Interpolacion de Lagrange de orden %s",num2str(npuntos));
title(str)

tic
for k = 1:m  % como las funcion newton_adelante calcula la interpolacion en un punto utilizo
             % un bucle para recorrer todo el intervalo 
p_newton_ad(k) = newton_adelante(x,y,x0(k));
endfor
toc

figure(2)
plot(x0,f(x0), 'c')
hold on
plot(x0,p_newton_ad, 'm')
legend('Solucion analitica', 'Interpolacion Newton')
str = sprintf("Interpolacion de Newton de orden %s",num2str(npuntos));
title(str)

tic 
for k = 1:m  % como las funcion vander_function calcula la interpolacion en un punto utilizo
             % un bucle para recorrer todo el intervalo 
vander_inter(k) = vander_function(x,y,x0(k));
endfor
toc 

figure(3)
plot(x0,f(x0), 'c')
hold on
plot(x0,vander_inter, 'm') 
legend('Solucion analitica', 'Interpolacion Vandermonde')
str = sprintf("Interpolacion de Vandermonde de orden %s",num2str(npuntos));
title(str)


