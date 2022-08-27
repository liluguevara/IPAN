% Estructura de seleccion ======================================================
% Analisis del determinante para determinar el tipo de raices 
%===============================================================================
% comandos que limpian las variables del espacio de trabajo 
clear; clc; 
%asigno valores a los coeficientes de la ecuacion cuadratica
a = [0.1, 0.25, 1.0]; % coeficiente termino cuadratico almacenados en un arreglo
b = 1.0;              % coeficiente termino lineal
c = 1.0;              % coeficiente termino independiente 
n = length(a);        % escalar de la longitud del arreglo a

for i =1:n; % itero sobre los elementos de a
  d = b^2-4.0*a(i)*c; % el discriminante
  if(d == 0.0)   % si el discriminante es igual a cero las raices son reales e iguales
    fprintf('Las raices del polinomio con coeficientes  a= %f, b= %f y c = %f son reales e iguales \n', a(i), b, c)
  elseif(d > 0.0) % si el discriminante es mayor que cero las raices son reales y distintas 
    fprintf('Las raices con coeficientes a= %f, b= %f y c = %f son reales y distintas \n', a(i), b, c)
  else % caso discriminante < 0, raices complejas de a pares conjugados           
    fprintf('Las raices con coeficientes a= %f, b= %f y c = %f son complejas \n', a(i),b, c)
  end 
end
