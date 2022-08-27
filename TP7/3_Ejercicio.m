% Ejercicio 3 Comparacion metodos con distinto paso ============================
% El ejercicio permite ver la ventaja de RK4 respecto de los demas metodos 
% implementados. RK4 con un paso del doble que Euler modificado y 4 veces mayor 
% que Euler permite obtener un mejor resultado que estos. Se observa tanto 
% graficamente como a partir de la norma 2 del error absoluto
% ==============================================================================
clc; clear all; close all;

f = @(x,y) y - x.^2 + 1;
sol = @(x) 1 + x.^2 +2.0*x -0.5*exp(x);

x0 = 0.0;
xn = 0.5;
h = 0.1;
y0 = 0.5;
x = [x0:0.01:xn];

% Euler con paso 0.025
he = 0.025;
[xe,ye] = euler(f,he,x0,xn,y0);
% Euler modificado con paso 0.05
hem = 0.05;
[xem,yem] = euler_modificado(f,hem,x0,xn,y0);
% Runge-Kutta orden 4 con paso 0.1
hrk4 = 0.1;
[xrk4,yrk4] = runge_kutta_orden4(f,hrk4,x0,xn,y0);

error_e = sqrt(sum(ye-sol(xe)).^2);
error_em = sqrt(sum(yem-sol(xem)).^2);
error_rk4 = sqrt(sum(yrk4-sol(xrk4)).^2);
fprintf('La norma 2 del error con Euler, Euler modificado y RK4 es %f, %f y %f, resp. \n', error_e, error_em, error_rk4⎄)
figure 1
plot(x,sol(x),'c')
hold on 
plot(xe,ye, '*c')
plot(xem,yem,'oc')
plot(xrk4,yrk4,'sc')
title('Comparacion metodos con diferente paso')
legend('Solucion analitica', 'Euler h= 0.025', 'Euler mod. h= 0.05', 'RK-4 h= 0.1')