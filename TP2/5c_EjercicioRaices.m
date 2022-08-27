% Funciones: ejercicio 5c =================================================
% Programa principal para el calculo de las raices de un polinomio 
% cuadratico mediante la formula de Bhaskara
%===========================================================================
% comandos que limpian las variables del espacio de trabajo
clear; clc; 
%asigno valores a los coeficientes de la ecuacion cuadratica
a = [0.0, 0.1, 0.25, 1.0]; % coeficiente termino cuadratico
b = 1.0;              % coeficiente termino lineal
c = 1.0;              % coeficiente termino independiente 

n = length(a);

for i = 1:n; % como a es un arreglo, llamo a la funcion tantas veces como la dimesion de a
  if ( a(i) == 0.0) % analizo si hay termino cuadratico
    disp('La ecuacion no tiene termino cuadratico')
  else   % en caso que haya calculo:
    [x1, x2, tipo] = bhaskara(a(i), b, c); %notar que se pasa de a un elemento de a  
    if (tipo ==1)
      fprintf('%f, %f \n', x1,x2) %imprimo el resultado en pantalla
    else
      fprintf('%f + %f i, %f - %f i \n', x1, x2, x1, x2) %construyo las soluciones y 
    end                                                    % las imprimo en pantalla
  end
end
