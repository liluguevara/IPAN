% Estructura de repeticion While ===============================================
% Se busca generar un vector que guarde los numeros a enteros positivos tales que a < 2000 
%y que a sea multiplo de 2, 7 y 13.
%===============================================================================
% comandos para que limpie las variables del espacio de trabajo 
clc; clear all;

% inicializo las variables
a = 0; % primer valor a considerar
i = 1; % contador utilizado para incrementar los valores de a que se almacenaran en x 
x = 0; % arreglo (inicializado como escalar) en el que se almacenaran los valores de a

while(a < 2000);
  if (~mod(a,2) && ~mod(a,7) && ~mod(a,13)) % la funcion mod(x,y) calcula el resto de 
  x(i) = a;                                 % de la division de x por y. La negacion (~)
  i = i +1; % incremento el contador        % convierte el resto de dividir cero en la 
  endif                                     % variable logica verdadera.
  a = a + 1; %incremento a                  % otra manera es considerar directamente
                                            % mod(x,y) == 0
endwhile  

disp('Los enteros menores de 2000 que cumplen con ser divisibles simultaneamente por 2, 7, y 13 son: ');
disp(x)
