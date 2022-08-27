% Evaluacion del polinomio de Newton ==========================================
% Evalua el polinomio de newton con coeficientes de diferencias divididas hacia
% adelante.
% Entrada: arreglo de coeficientes
%          arreglo con los valores de la ordenada al origen utilizados para la 
%          construccion de los coeficientes
%          arreglo en donde se quiere evaluar el polinomio
% Salida:  arreglo con la evaluacion del polinomio
% =============================================================================
function pol = eval_Newton_ad(coef, x, x0)
  n = length(x0);
  m = length(coef);
  pol = zeros(1,n);
  mul = ones(1, m);
  n = length(x0);
  for j = 1: n;
  for i=2:m;
    mul(i)=mul(i-1)*(x0(j)-x(i-1));
  endfor
   pol(j) = sum(coef.*mul); 
  endfor

   