% Integral mediante regla del rectangulo utilizando las ventajas del lenguaje ==
% Octave/Matlab ================================================================
% Metodo de orden h 
% Entrada: y: arreglo con la evaluacion de la funcion.
%          h: paso, distancia entre dos ordenandas al origen sucesivas h=x(2)-x(1)
%          El paso en x debe ser constante
% Salida:  int_rec: escalar con el valor de la integral
% ==============================================================================
function int_rec = integral_rectangulo_potente(y,h)
  int_rec = 0.0;
  int_rec = h*sum(y(1:end-1));
end
