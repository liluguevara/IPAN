%Ejercicio 8: Metodo de Newton =================================================
% Antes de correr los programas hacemos un help de las funciones en la command 
% window para ver las variables de entrada y de salida a definir
% para definir el valor inicial primero graficamos las funciones
clear all; close all; clc

% funciones inciso b ---------------------------------------------------------
% parametros comunes a todas las funciones que se buscara estimar el cero:
tol = 5.0E-8;
N = 100;
terror = 1; % tipo de error = 1 porque pide 8 digitos significativos (error relativo)
x = [-1:0.01:1]; % vector para evaluar la funcion para estimar el valor inicial

% i)
f1 = @(x) x.*exp(-x) + x.^2 -1;
df1 = @(x) exp(-x) - x.*exp(-x) + 2.0*x; 
figure 1
plot(x,f1(x));
grid 
x0 = 0.5;
[raiz1, iter1, clave] = newton(f1, df1, x0, terror, N, tol);
if(clave == 1)
printf("El numero maximo de iteraciones fue alcanzado \n")
else
printf("La raiz buscada es %f y fue encontrada en %d iteraciones\n", raiz1, iter1) 
endif

% ii)
f2 = @(x) cos(x) -x;
df2 =@(x) -sin(x) - 1.0;
figure 2
plot(x,f2(x));
grid 
x0 = 1.0;
[raiz2, iter2, clave] = newton(f2, df2, x0, terror, N, tol);
if(clave == 1)
printf("El numero maximo de iteraciones fue alcanzado \n")
else
printf("La raiz buscada es %f y fue encontrada en %d iteraciones\n", raiz2, iter2) 
endif

% iii)
f3 =@(x) exp(x)-x-1.0;
df3=@(x) exp(x)-1.0;
d2f3=@(x) exp(x);
%u =@(x) (exp(x)-x-1.0)/(exp(x)-1.0);
%du = @(x) 1.0 - exp(x)*(exp(x)-x-1.0)/(exp(x)-1.0)^2;
u3 =@(x) f3(x)/df3(x); % es valido definir funciones anonimas como operaciones de 
du3 =@(x) 1-f3(x)*d2f3(x)/df3(x)^2; % funciones anonimas previamente definidas

figure 3
plot(x,f3(x));
grid
x0 = 0.4;
[raiz3, iter3, clave] = newton(f3, df3, x0, terror, N, tol);
if(clave == 1)
printf("El numero maximo de iteraciones fue alcanzado")
else
printf("La raiz buscada es %f y fue encontrada en %d iteraciones\n", raiz3, iter3) 
endif

% c)
[raiz3, iter3, clave] = newton(u3, du3, x0, terror, N, tol);
if(clave == 1)
printf("El numero maximo de iteraciones fue alcanzado")
else
printf("La raiz buscada es %f y fue encontrada en %d iteraciones\n", raiz3, iter3) 
end

% d)
% No se puede aplicar biseccion, el cero de la funcion es tangente al eje de las 
% abscisas, no lo cruza y luego no hay un intervalo en el cual ocurra 
% el cambio de signo  


