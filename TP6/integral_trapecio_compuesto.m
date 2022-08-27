% Integral mediante regla del trapecio compuesto ===============================
% Metodo de orden h 
% Entrada: y: arreglo con la evaluacion de la funcion.
%          h: paso, distancia entre dos ordenandas al origen sucesivas h=x(2)-x(1)
%          El paso en x debe ser constante
% Salida:  int_trap: escalar con el valor de la integral
% ==============================================================================
function int_trap = integral_trapecio_compuesto(y,h)
  int_trap = 0.0;
  aux = 0.0; % variable para guardar la sumatoria de y dentro del intervalo
  n = length(y);
  for i=2:n-1
    aux = aux + y(i);
  end
  int_trap = h/2.0*(y(1)+y(end)+2.0*aux);
end
