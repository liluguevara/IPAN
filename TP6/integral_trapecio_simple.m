% Integral mediante regla del trapecio simple ==================================
% Metodo de orden h 
% Entrada: y: arreglo con la evaluacion de la funcion en los limites de 
%          integracion (y(a) e y(b)).
%          a: limite inferior del intervalo de integracion
%          b: limite superior del intervalo de integracion
% Salida:  int_trap: escalar con el valor de la integral
% ==============================================================================
function int_trap = integral_trapecio_simple(y,a,b)
  int_trap = 0.0;
  int_trap = (b-a)*(y(1)+y(end))/2.0;
end
