% Ejercicio 2: estructura de repeticion ========================================
% Calcular la suma y el producto de los primeros 50 números enteros positivos
% ==============================================================================
% comandos que limpian las variables del espacio de trabajo 
clear; clc; 
# inicializacion de variables
n = 50;   % cantidad de terminos a sumar/multiplicar
suma = 0; % la suma se inicializa en cero
producto = 1; % el producto se inicializa en uno

for i=1:n
  suma = suma +i;
end
fprintf('La suma de los primeros %d numeros enteros es %d \n', n, suma)

for i = 1:n
  producto = producto*i;
end
fprintf('El producto de los primeros %d numeros enteros es %d \n', n, producto)
