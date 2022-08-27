% Ejercicio 2: aplicacion metodo de biseccion ==================================
clc; clear all; close all;

% funcion a encontrar la raiz e intervalo de busqueda
f = @(x) x.*exp(-x) + x.^2 -1.0;
a = 0.0;
b = 1.0;
tol = 10E-4; # exactitud: error absoluto como criterio de corte
N = 100; # numero maximo de iteraciones a realizar en caso que no se encuentre la raiz
terror = 0; % terror = 0: error absoluto, terror = 1: error relativo

[raiz, iter, clave] = biseccion(a, b, f, terror, tol, N);

if (clave == 2);
  printf ("Intervalo mal determinado");
elseif(clave == 1);
  printf("El numero maximo de iteraciones fue alcanzado");
else(clave == 0);
  printf("La raiz buscada es %f y fue encontrada en %d iteraciones\n", raiz, iter);
endif
