% Integral mediante regla de simpson compuesto 1/3 utilizando las ventajas del 
% lenguaje Octave/Matlab =======================================================
% Metodo de orden h 
% Entrada: y: arreglo con la evaluacion de la funcion.
%          h: paso, distancia entre dos ordenandas al origen sucesivas h=x(2)-x(1)
%          El paso en x debe ser constante
% Salida:  int_simp: escalar con el valor de la integral
% ==============================================================================
function int_simp = integral_simpson_compuesto_potente(y,h)
  int_simp = 0.0;
  int_simp = h/3.0*(y(1)+y(end)+2.0*sum(y(3:2:end-2))+4.0*sum(y(2:2:end-1)));
end
