%Interpolacion por Newton hacia adelante ======================================
% Funcion que calcula la evaluacion en un punto del polinomio de interpolacion
% de Newton utilizando diferencias divididas hacia adelante. 
% (para el calculo de los coeficientes solo se necesita guardar dos valores)
% entrada: (x, y) pares ordenados a utilizar para interpolar, la cantidad de 
%                 puntos pasados dan el grado del polinomio interpolante.
%          x0 valor donde se evalua el polinomio
% salida: p_newton_ad, evaluacion del polinomio de interpolacion en x0
%===============================================================================
function p_newton_ad = newton_adelante(x,y,x0)
  n=length(x);
  prod_n = ones(1,n);
  coef = y;
  aux_coef = y;
  p_newton_ad = 0.0;
  j = 2;
  while(j <= n)
    for i=j:n 
      aux_coef(i) = (coef(i)-coef(i-1))/(x(i)-x(i-j+1));
    end
    j = j+1;
    coef = aux_coef;
  end
  
  for i=2:n
    prod_n(i) = prod_n(i-1)*(x0-x(i-1));
   end 
  
   p_newton_ad = sum(prod_n*coef'); 
 
  
end
