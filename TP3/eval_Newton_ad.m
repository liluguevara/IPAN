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
  m = length(x);
  pol = zeros(1,n); % inicializacion de la evaluacion en cero
  mul = ones(1, m); % inicializacion de los productos en uno
  n = length(x0);
  for j = 1: n;
  for i=2:m;
    mul(i)=mul(i-1)*(x0(j)-x(i-1)); % calculo los productos 1, (x0-x(1)),(x0-x(1))(x0-x(2)), (x0-x(1))(x0-x(2)...(x0-x(m-1))
  endfor
   pol(j) = sum(coef.*mul); % suma del producto elemento a elemento de los coeficientes y los productos
  endfor

   