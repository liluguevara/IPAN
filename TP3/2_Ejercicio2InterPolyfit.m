% ejercicio 2: calculo de polinomios de diferentes orden a partir de polyfit ===
% ==============================================================================
clc; clear; 
% carga de puntos a utilizar para la interpolacion
x = [1.0 1.25 1.5 1.75 2.0 2.25 2.5];
y = [-4.5 2.48 1.79 -4.47 -6 -0.22 14.7]; 
n = [true true true true true true true];
% n: arreglo (de igual longitud que x e y) de variables logicas que se utilizara
% como argumento de x e y para seleccionar el par (x,y) para la interpolacion.
% (polyfit en realidad calcula el ajuste por minimos cuadrados pero al calcular
% el ajuste de máximo grado posible se fuerza a una interpolacion, es por esto
% que se deben seleccionar la cantidad de puntos acorde al orden).
% Es util para calcular polinomios de interpolacion de diferentes orden a partir
% de un mismo set de arreglos. 
orden = sum(n)-1; % variable que indica el orden del polinomio a calcular
x0 = 1.6; % punto en el que se evaluara la interpolacion

coef = polyfit(x(n),y(n), orden); % calculo de los coeficientes
p0 = polyval(coef, x0); % evaluacion del polinomio de coeficientes coef en x0
fprintf('El polinomio de interpolacion de orden %d evaluado en %f es: %f \n', orden, x0, p0)
fprintf('Los pares ordenados utilizados fueron: \n')
fprintf('(%f, %f) \n', [x(n); y(n)]) % nuevamente se usa el arreglo de variables logicas como argumento de x e y. 
