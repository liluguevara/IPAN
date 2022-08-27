% Funcion punto fijo ===========================================================
% Resolucion de ecuacion no lineal =============================================
% Entrada: f funcion anonima 
%          x0 aproximacion inicial
%          terror variable que indica si la aproximacion debe determinarse a 
%          partir de error absoluto (terror = 0) o error relativo (terror = 1) 
%          N numero maximo de iteraciones
%          tol tolerancia preestablecida para el criterio de corte: la diferencia
%          entre dos interciones sucesivas (error absoluto o relativo) debe ser 
%          menor a tol
% Salida   raiz aproximacion a la raiz
%          iter cantidad de iteraciones realizadas
%          clave permite identificar si se determino la raiz (calve = 0) o si se 
%          alcanzo el numero maximo de iteraciones (clave = 1)
% ==============================================================================
function [raiz, iter, clave]= punto_fijo(f, x0, terror, N, tol) 

  clave = 1;
  xx0 = x0;
  iter = N;
  raiz = 0.0;

if terror == 0  
  for i=1:N
    raiz = f(xx0);
    if(abs(raiz-xx0) < tol)
      clave = 0;
      iter = i;
      break;
    end
    xx0 = raiz;
  end  
elseif terror == 1
  for i=1:N
    raiz = f(xx0);
    if(abs(raiz-xx0) < tol*abs(raiz))
      clave = 0;
      iter = i;
      break;
    end
    xx0 = raiz;
  end  
end   
end 