% Derivada primera centrada ====================================================
% Calcula la derivada primera centrada (Oh2)salvo en los extremos del intervalo que 
% calcula la derivada progresiva y regresiva, respectivamente (Oh).
% Entrada: y arreglo con valores a derivar
%          h escalar cuyo valor se corresponde con la difrencia entre dos valores 
%          sucesivos del vector de las ordenadas al origen (h = x(2)-x(1))
% Salida:  val arreglo con los valores calculados
% ==============================================================================
function val = der_primera_centrada(y, h);
  n = length(y);
  val = zeros(1, n);
  for i = 1:n
    if i ==1 
     val(i) = (y(i+1) - y(i))/h;
    elseif i == n
     val(i) = (y(i) - y(i-1))/h;
    else
     val(i) = (y(i+1) - y(i-1))/2.0/h;
    end
  end
end
