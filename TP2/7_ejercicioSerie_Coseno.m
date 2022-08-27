% Serie Coseno =================================================================
% Calculo la aproximacion al coseno de pi/3 a partir de sumar n terminos (n a deternimar)
% con una tolerancia del error relativo previamente establecida.
% ==============================================================================
% comandos que limpian las variables del espacio de trabajo 
clc; clear;
format long % para tener mas de 5 decimales
x = pi/3;   % valor en el que evaluo la serie 
tol = 5e-8; % tolerancia para el calculo de la aproximacion
cos_sol = cos(x); % solucion exacta

% inicializacion de variables
n = 0; % primer termino a considerar
cos_s(n+1) = 1; % primera aproximacion
error_rel(n+1) = abs(cos_s(n+1) - cos_sol)/abs(cos_sol); % error relativo asociado al primer termino 
                                                       
while error_rel(n+1) > tol*abs(cos_s);
   n = n + 1; % incremento los terminos
  cos_s(n+1) = cos_s(n) + (-1)^(n)*x^(2*n)/factorial(2*n); % aproximacion
  error_rel(n+1) = abs(cos_s(n+1) - cos_sol)/abs(cos_sol); % error relativo
end

fprintf('terminos: %d, aproximacion: %e \n', n, cos_s(end))


for j = 1:n; 
  fprintf('termino: %d, aprox: %e, error: %e \n', j, cos_s(j), error_rel(j))
endfor
