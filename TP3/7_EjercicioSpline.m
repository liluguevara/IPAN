% Ejercicio 7: spline cubico ==================================================

clc; clear all;
% declaracion de variables de entrada
x = [1.6,  2.0, 2.5, 3.2, 4.0, 4.5];
y = [2.0, 8.0, 14.0, 15.0, 8.0, 2.0];
xval = 2.25;

# opcion spline con dos argumentos: calcula los coeficientes y con la funcion 
# ppval evaluo el polinomio
coef_spline = spline(x, y);
ev_spline1 = ppval(coef_spline, xval);
fprintf('La interpolacion segmentaria evaluada en %f da %f \n', xval, ev_spline1)

# opcion spline con tres argumentos: calcula la evaluacion en el tercer argumento
ev_spline2 = spline(x, y, xval);
fprintf('La interpolacion segmentaria evaluada en %f da %f \n', xval, ev_spline2)
