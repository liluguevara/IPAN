% Integral mediante regla de simpson 1/3 compuesto =============================
% Metodo de orden h 
% Entrada: y: arreglo con la evaluacion de la funcion.
%          h: paso, distancia entre dos ordenandas al origen sucesivas h=x(2)-x(1)
%          El paso en x debe ser constante
% Salida:  int_simp: escalar con el valor de la integral
% ==============================================================================
function int_simp = integral_simpson_compuesto(y,h)
  int_simp = 0.0;
  int_simp_par = 0.0;
  int_simp_impar = 0.0;
  n = length(y);
  
  for i=3:2:n-2 % suma de los terminos pares, pero como la regla comienza en indice 
    int_simp_par = int_simp_par + y(i);; % cero, se traslada al lenguaje sumando los impares como pares
  end
  for i=2:2:n-1 % suma de los terminos impares, pero como la regla comienza en indice 
    int_simp_impar = int_simp_impar + y(i);; % cero, se traslada al lenguaje sumando los pares como impares
  end
 
  int_simp = h/3.0*(y(1) + y(end) + 2.0*int_simp_par + 4.0*int_simp_impar);
end
