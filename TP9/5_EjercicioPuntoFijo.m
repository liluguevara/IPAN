% Ejercicio 5: Metodo de Punto Fijo ============================================
# Ejercicio 5: cero de la funcion x + log(x) = 0 mediante punto fijo. Para ello
# escribimos g(x) = x de tres maneras diferentes y comparamos
 
clear all; close all; clc

g1 = @(x)-log10(x);
g2 = @(x) exp(-x);
g3 = @(x) 0.5*x + 0.5*exp(-x);

x0 = 0.5;

tol = 5.0E-5; % digitos significativos: error relativo
terror = 1;
N = 100;

disp('Para g1:')
[raiz, iter, clave] = punto_fijo(g1, x0, terror, N, tol);

if(clave == 1)
printf("El numero maximo de iteraciones fue alcanzado \n")
else
printf("La raiz buscada es %f y fue encontrada en %d iteraciones\n", raiz, iter) 
end

disp('Para g2:')
[raiz, iter, clave] = punto_fijo(g2, x0, terror, N, tol);

if(clave == 1)
printf("El numero maximo de iteraciones fue alcanzado \n")
else
printf("La raiz buscada es %f y fue encontrada en %d iteraciones\n", raiz, iter) 
end

disp('Para g3:')
[raiz, iter, clave] = punto_fijo(g3, x0, terror, N, tol);

if(clave == 1)
printf("El numero maximo de iteraciones fue alcanzado \n")
else
printf("La raiz buscada es %f y fue encontrada en %d iteraciones\n", raiz, iter) 
end