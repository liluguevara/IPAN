% Interpolacion de Lagrange ==================================================
% Funcion que calcula la evaluacion en un arreglo del polinomio de interpolacion 
% de Lagrange
% entrada: (x, y) pares ordenados a utilizar para interpolar, la cantidad de 
%                 puntos pasados dan el grado del polinomio interpolante.
%          x0 valor donde se evalua el polinomio
% salida: p_lagrange, evaluacion del polinomio de interpolacion en el arreglo x0
% =============================================================================
function p_lagrange = lagrange_inter_vec(x,y,x0)
  n = length(x);
  coef = 1.0;
  m = length(x0);
  p_lagrange = zeros(m,1);
  for k = 1:m
  for i =1:n
    for j =1:n
      if j ~= i
        coef = coef*(x0(k)-x(j))/(x(i)-x(j));
      endif
    endfor
    p_lagrange(k) = p_lagrange(k) + coef*y(i);
    coef =1.0;
  endfor
  endfor
endfunction