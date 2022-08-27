% Ejercicio 5 =================================================================
% derivada numerica segunda de la funcion coseno ========================================
clc; clear all; 
h = 10.0; % defino el paso
n = 25;
x0 = 0.5*pi/180.0; % paso x0 a radianes
sol_exacta = -cos(x0); % calculo la solucion exacta para el error
h = [0.1 0.01 0.001];
aprox_der2_cos = (cos(x0-h) -2.0*cos(x0) + cos(x0+h))./h.^2;
error = abs(sol_exacta - aprox_der2_cos);
for i = 1:length(h)
  fprintf('Aproximacion a la derivada segunda de cos(%f) con h = %e: %f \n', x0, h(i), aprox_der2_cos(i))
  fprintf('y el error en dicha aproximacion es %f \n', error(i))
end 
