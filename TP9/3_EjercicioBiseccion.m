# Ejercicio 3: determinacion de la interseccion entre dos funciones utilizando
# biseccion 
clc; clear all; close all;
% defino las funciones y las grafico para visualizar donde ocurren las interseciones
f = @(x) 4.0 + cos(x + 1.0);
g = @(x) exp(x).*sin(x);
x = [-1:0.01:5];
figure 1
plot(x,f(x), 'c')
hold on
plot(x,g(x), 'm')
legend('f(x)', 'g(x)')

% Graficamente se observa que ocurre una interseccion cercana a 1: tomamos [0 2]
% y otra cercana a 3: tomamos [2 4]
% Para determinar el punto de interseccion igualo las funciones
h = @(x) f(x) - g(x);
a1 = 0.0;
b1 = 2.0;
a2 = 2.0;
b2 = 4.0;
tol = 0.01; % un error porcentual del 1% equivale a un error relativo de 0.01 
terror = 1; % tipo de error a utilizar: error relativo
N = 100; % numero maximo de iteraciones a utilizar 

[raiz1, iter1, clave] = biseccion(a1, b1, h, terror, tol, N);

if (clave == 2);
  printf ("Intervalo mal determinado \n");
elseif(clave == 1);
  printf("El numero maximo de iteraciones fue alcanzado \n");
else(clave == 0);
  printf("La interseccion en el intervalo [%0.1f %0.1f] ocurre en %f y fue encontrada en %d iteraciones\n", a1, b1, raiz1, iter1);
end

[raiz2, iter2, clave] = biseccion(a2, b2, h, terror, tol, N);

if (clave == 2);
  printf ("Intervalo mal determinado \n");
elseif(clave == 1);
  printf("El numero maximo de iteraciones fue alcanzado \n");
else(clave == 0);
  printf("La interseccion en el intervalo [%0.1f %0.1f] ocurre en %f y fue encontrada en %d iteraciones\n", a2, b2, raiz2, iter2);
end
 
