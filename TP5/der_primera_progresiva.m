% Derivada primera progresiva ====================================================
% Calcula la derivada primera progresiva (Oh). En el ultimo valor donde no puede
% calcularse devuelve el valor cero
% Entrada: y arreglo con valores a derivar
%          h escalar cuyo valor se corresponde con la difrencia entre dos valores 
%          sucesivos del vector de las ordenadas al origen (h = x(2)-x(1))
% Salida:  val arreglo con los valores calculados
% ==============================================================================
function val = der_primera_regresiva(y, h);
  n = length(y);
  val = zeros(1, n);
  for i = 1:n-1
     val(i) = (y(i+1) - y(i))/h;
  end 
end  