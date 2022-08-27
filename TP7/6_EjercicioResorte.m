% Ejercicio 6: Ecuacion diferencial de segundo grado que se lleva a un sistema
% de dos ecuaciones de primer orden. La ecuacion a resolver es la de un oscilador
% armonico simple: m*u''(t) + ku(t) = 0 ========================================

clc; clear all; close all;

k = 200; % constante de rigidez [KN/m]
m = 20;  % masa [kg]
h = 0.1; % paso
t0 = 0; % tiempo inicial
tn = 10; % tiempo final
A0 = 0.02; % desplazamiento inicial

% funciones solucion analitica  
des_analitico = @(t) A0*cos(sqrt(k/m)*t);
vel_analitico = @(t) -A0*sqrt(k/m)*sin(sqrt(k/m)*t);
ta = [t0:0.1:tn];

% sistema de ecuaciones a resolver 
v = @(x,y1,y2) y2;
a = @(x,y1,y2)-k/m*y1;

y0(1) = 0.02; % valor inicial para el desplazamiento
y0(2) = 0.0; % valor inicial para la velocidad



[t_e,desp_e,vel_e]=sistema_euler(v, a, h, t0, tn, y0); 

figure 1
plot(ta,des_analitico(ta), '-c');
hold on 
plot (t_e,desp_e, 'om');
title('Resorte: desplazamiento')
legend('Solución analítica','Estimación Euler simple')
xlabel('Tiempo [s]')
ylabel('Desplazamiento [m]')

figure 2
plot(ta,vel_analitico(ta), '-c');
hold on 
plot(t_e,vel_e, 'om');
title('Resorte: velocidad')
legend('Solución analítica', 'Estimación Euler simple')
xlabel('Tiempo [s]')
ylabel('Velocidad [m/s]')

[t_r,desp_r,vel_r]=sistema_runge_kutta4(v, a, h, t0, tn, y0); 

figure 3
plot(ta,des_analitico(ta), '-c');
hold on 
plot (t_r,desp_r, 'om');
title('Resorte: desplazamiento')
legend('Solución analítica','Estimación Runge-Kutta 4')
xlabel('Tiempo [s]')
ylabel('Desplazamiento [m]')

figure 4
plot(ta,vel_analitico(ta), '-c');
hold on 
plot(t_r,vel_r, 'om');
title('Resorte: velocidad')
legend('Solución analítica', 'Estimación Runge-Kutta 4')
xlabel('Tiempo [s]')
ylabel('Velocidad [m/s]')

