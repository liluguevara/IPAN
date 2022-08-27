% Interpolacion de Lagrange ==================================================
% Funcion que calcula la evaluacion en un punto del polinomio de interpolacion 
% de Lagrange
% entrada: (x, y) pares ordenados a utilizar para interpolar, la cantidad de 
%                 puntos pasados dan el grado del polinomio interpolante.
%          x0 valor donde se evalua el polinomio
% salida: p_lagrange, evaluacion del polinomio de interpolacion en x0
% =============================================================================
function p_lagrange = lagrange_inter(x,y,x0)
n = length(x);
coef = 1.0;
p_lagrange = 0.0;
  
for i =1:n
  for j =1:n
    if j ~= i
      coef = coef*(x0-x(j))/(x(i)-x(j));
    end
  end
  p_lagrange = p_lagrange + coef*y(i);
  coef =1.0;
end

end
