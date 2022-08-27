% Ejercicio 2 =================================================================
% derivada primera numerica de la funcion seno ========================================
clc; clear all; 
h = 10.0; % defino el paso
n = 25;
x0 = 0.1*pi/180.0; % paso x0 a radianes
sol_exacta = cos(x0); % calculo la solucion exacta para el error

for i = 1:n
  aprox_der1_sin = (sin(x0+h) - sin(x0-h))/2.0/h;
  error = abs(sol_exacta - aprox_der1_sin);
  fprintf('Aproximacion a la derivada primera de sin(%f) con h = %e: %f \n', x0, h, aprox_der1_sin)
  fprintf('y el error en dicha aproximacion es %f \n', error)
  h = h/10.0;
end
