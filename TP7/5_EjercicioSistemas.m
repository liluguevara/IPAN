% Ejercicio 5: sistema de 2 ecuaciones de primer orden euler  y RK4 ============
clc; clear all;close all;
%  defino las funciones que en general dependen de (x,y1,y2)
f =@(x,y1,y2) -0.5*y1;
g =@(x,y1,y2) 4 -0.3*y2-0.1*y1; 
% datos de entrada
y0 = [4 6]; % como es un sistema ahora tengo dos condiciones para y 
x0 = 0;
xn = 10;
h = 0.5;

[xe,ye1,ye2]=sistema_euler(f, g, h, x0, xn, y0); 
[xrk4,yrk41,yrk42]=sistema_runge_kutta4(f, g, h, x0, xn, y0); 

figure 1
plot(xe,ye1,'*c')
hold on 
plot(xrk4,yrk41,'oc')
legend('Euler', 'RK-4')
title('Comparacion sistemas')
xlabel('x')
ylabel('y1')

figure 2
plot(xe,ye2,'*c')
hold on 
plot(xrk4,yrk42,'oc')
legend('Euler', 'RK-4')
title('Comparacion sistemas')
xlabel('x')
ylabel('y2')
