% Derivada primera progresiva y regresiva ======================================
% Calcula la derivada primera progresiva (Oh) salvo en el ultimo punto donde 
% calcula la derivada regresiva.
% Entrada: y arreglo con valores a derivar
%          h escalar cuyo valor se corresponde con la difrencia entre dos valores 
%          sucesivos del vector de las ordenadas al origen (h = x(2)-x(1))
% Salida:  val arreglo con los valores calculados
% ==============================================================================
function val = der_primera_regresiva_regresiva(y, h);
  n = length(y);
  val = zeros(1, n);
  for i = 1:n
    if i == n
      val(i) = (y(i) - y(i-1))/h;
    else
      val(i) = (y(i+1) - y(i))/h;
    end 
  end 
end  