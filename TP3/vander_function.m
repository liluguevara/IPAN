% Vandermonde: calculo de la matriz y de interpolacion =========================
% Funcion que calcula la evaluacion en un punto del polinomio de interpolacion
% de Vandermonde. 
% (para el calculo de los coeficientes solo se necesita guardar dos valores)
% entrada: (x, y) pares ordenados a utilizar para interpolar, la cantidad de 
%                 puntos pasados dan el grado del polinomio interpolante.
%          x0 valor donde se evalua el polinomio
% salida: p_newton_ad, evaluacion del polinomio de interpolacion en x0
%===============================================================================
function vander_inter = vander_function(x,y,x0)
  
  n = length(x);
  vander_matrix = ones(n);
  coef = zeros(n,1);
  vander_inter = 0.0;
  for i=2:n
    vander_matrix(:,i) = x.^(i-1);
  end
    coef = inv(vander_matrix).*y;
  for i = 1:n
    vander_inter = vander_inter + coef(i)*x0^(i-1);
  end
end


