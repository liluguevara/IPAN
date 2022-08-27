# Ejercicio 6: determinacion de raices mediante punto fijo =====================
clc; clear all; close all;

% funcion a determinar ceros e intervalo de busqueda
f = @(x) exp(x) -pi*x;
a= 0.0;
b = 2.0;
x = [a:0.01: b];
figure 1
plot(x,f(x))
grid on

# A partir de la grafica se observan dos ceros, uno cercano a x0 = 0.5, intervalo 
# [0 1]  y otro a x0 = 1.5, intervalo [1 2]

#b) Raiz cercana a cero: x0 = 0.5
gb = @(x) exp(x)/pi; 
x = [0:0.01:1];
figure 2
plot(x,x,'c');
hold on 
plot(x,gb(x), 'm');
legend('y = x', 'g(x)')

x0b = 0.5;
tol = 0.5e-4; 
terror = 0; % como no indica nada tomo error absoluto
N = 100;

disp('Raiz cercana a cero: x0 = 0.5:')
[raiz, iter, clave] = punto_fijo(gb, x0b, terror, N, tol);
if(clave == 1)
printf("El numero maximo de iteraciones fue alcanzado \n")
else
printf("La raiz buscada es %f y fue encontrada en %d iteraciones\n", raiz, iter) 
end

# c) Raiz cercana a x0 = 1.5

x = [1:0.01:2];
figure 3
plot(x,x, 'c');
hold on 
plot(x,gb(x), 'm');
legend('y = x', 'g(x)')

x0b = 1.5;
tol = 0.5e-4; 
terror = 0; % como no indica nada tomo error absoluto
N = 100;

disp('Raiz cercana a cero: x0 = 1.5:')
[raiz, iter, clave] = punto_fijo(gb, x0b, terror, N, tol);
if(clave == 1)
printf("El numero maximo de iteraciones fue alcanzado \n")
else
printf("La raiz buscada es %f y fue encontrada en %d iteraciones\n", raiz, iter) 
end

# e) Repito para x0 = 1.5 pero con otra funcion x = g(x)

ge = @(x) log(pi*x);
figure 4
plot(x,x, 'c');
hold on 
plot(x,ge(x), 'm');
legend('y = x', 'g(x)')

x0e = 1.5;
tol = 0.5e-4; 
terror = 0; % como no indica nada tomo error absoluto
N = 100;

disp('Raiz cercana a cero: x0 = 1.5:')
[raiz, iter, clave] = punto_fijo(ge, x0e, terror, N, tol);
if(clave == 1)
printf("El numero maximo de iteraciones fue alcanzado \n")
else
printf("La raiz buscada es %f y fue encontrada en %d iteraciones\n", raiz, iter) 
end

