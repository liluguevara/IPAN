%Coeficientes iterpolacion Newton diferencias divididas hacia adelante =========
% Entrada: pares ordenados (x,y) a utilizar para la construccion de los 
%          coeficientes 
% Salida:  coeficientes para la construccion del polinomio 
% ==============================================================================
function coef = newton_adelante_coef(x,y)
  n=length(x);
  prod_n = ones(1,n);
  coef = y;
  aux_coef = y;
  p_newton_ad = 0.0;
  %j = 2;         % La funcion puede implementarse con un for o con un while
  %while(j <= n)  
  for j =2:n  
    for i=j:n 
      aux_coef(i) = (coef(i)-coef(i-1))/(x(i)-x(i-j+1));
    end
  %  j = j+1;
    coef = aux_coef;
  %endwhile
  end
  
end
