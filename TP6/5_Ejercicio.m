% Ejercicio 5 ==================================================================
clc; clear all;

f = @(x) 1./x;
h = 0.1;
a = 1.0;
b = 1.0+h;
int_exacta = log(b) - log(a);
y = [f(a) f(b)];
int_trapecio_simple = integral_trapecio_simple(y, a, b);
int_trapecio_comp = integral_trapecio_compuesto_potente(y,h); 
%notar que a pesar de  utilizar solo dos puntos con trapecio compuesto se 
%obtiene el mismo resultado que con trapecio simple (las formulas son consistentes).
error = abs(int_trapecio_comp - int_exacta);
fprintf('La integral de 1/x en el intervalo [%.1f %.1f] mediente trapecio simple y compuesto es es %f y %f, resp.\n', a, b, int_trapecio_simple, int_trapecio_comp)
fprintf('El error absoluto cometido es de %f \n', error)