% Integral mediante regla del trapecio utilizando las ventajas del lenguaje ==
% Octave/Matlab ================================================================
% Metodo de orden h 
% Entrada: y: arreglo con la evaluacion de la funcion.
%          h: paso, distancia entre dos ordenandas al origen sucesivas h=x(2)-x(1)
%          El paso en x debe ser constante
% Salida:  int_trap: escalar con el valor de la integral
% ==============================================================================
function int_trap = integral_trapecio_compuesto_potente(y,h)
  int_trap = 0.0;
  int_trap = h/2.0*(y(1)+y(end)+2.0*sum(y(2:end-1)));
end
