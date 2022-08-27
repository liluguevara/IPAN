# Ejercicio 2: ED PVI ==========================================================
clc; clear all, close all;
f = @(x,y) sin(x);
sol = @(x) 2 - cos(x);

x0 = 0.0;
xn = 8.0;
y0 = 1.0;
x = [x0:0.01:xn]; % defino x para graficar 

tol = 0.5e-2;
error = 1.0; % inicializo con valor mayor a tol

figure 1
plot(x,sol(x))
hold on

h = 0.5; % parto de un paso y lo voy a dividir por 2 hasta que el error sea menor
% a cierta tolerancia. En este caso analizo para cada metodo.
while(error > tol)
[xe, ye] = euler(f,h,x0,xn,y0);
error = sqrt(sum((ye - sol(xe)).^2));
fprintf('La norma 2 del error con Euler con paso %f es: %f \n', h, error)
h = h/2;
plot(xe,ye, '*c')
end 

figure 2
plot(x,sol(x))
hold on

h = 0.5; % redefino el paso
error = 1.0; % redefino el error inicial
while(error > tol)
[xem, yem] = euler_modificado(f,h,x0,xn,y0);
error = sqrt(sum((yem - sol(xem)).^2));
fprintf('La norma 2 del error con Euler modificado con paso %f es: %f \n', h, error)
h = h/2;
plot(xem,yem, '*c')
end

figure 3
plot(x,sol(x))
hold on

h = 0.5; % redefino el paso
error = 1.0; % redefino el error inicial
while(error > tol)
[xrk2, yrk2] = runge_kutta_orden2(f,h,x0,xn,y0);
error = sqrt(sum((yrk2 - sol(xrk2)).^2));
fprintf('La norma 2 del error con RK-2 con paso %f es: %f \n', h, error)
h = h/2;
plot(xrk2,yrk2, '*c')
end 

figure 4
plot(x,sol(x))
hold on

h = 0.5; % redefino el paso
error = 1.0; % redefino el error inicial
while(error > tol)
[xrk4, yrk4] = runge_kutta_orden4(f,h,x0,xn,y0);
error = sqrt(sum((yrk4 - sol(xrk4)).^2));
fprintf('La norma 2 del error con RK-4 con paso %f es: %f \n', h, error)
h = h/2;
plot(xrk4,yrk4, '*c')
end 