% Integral mediante regla del rectangulo =======================================
% Metodo de orden h 
% Entrada: y: arreglo con la evaluacion de la funcion.
%          h: paso, distancia entre dos ordenandas al origen sucesivas h=x(2)-x(1)
%          El paso en x debe ser constante
% Salida:  int_rec: escalar con el valor de la integral
% ==============================================================================
function int_rec = integral_rectangulo(y,h)
  int_rec = 0.0;
  n = length(y);
  for i=1:n-1
    int_rec = int_rec + y(i);
  end
  int_rec = h*int_rec;
end
