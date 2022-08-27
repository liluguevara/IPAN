% Integral mediante regla de simpson simple 1/3 ================================
% Metodo de orden h 
% Entrada: y: arreglo con la evaluacion de la funcion en los limites de 
%          integracion y en el medio del mismo (y(a), y(b) e y((a+b)/2).
%          a: limite inferior del intervalo de integracion
%          b: limite superior del intervalo de integracion
% Salida:  int_sim: escalar con el valor de la integral
% ==============================================================================
function int_sim = integral_simpson_simple(y,a,b)
  int_sim = 0.0;
  int_sim = (b-a)*(y(1)+4.0*y(2)+y(end))/6.0
end
