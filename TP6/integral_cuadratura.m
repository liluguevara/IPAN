# Cudratura de Gauss-Legendre ==================================================
# integral mediante cuadratura.
# Entrada: f: funcion en la que se evaluaran los nodos
#          a y b: limites de integracion
#          tabla: matriz de n puntos con nodos en la primera columna y pesos en 
#          la segunda 
# Salida:  int_cuad: escalar con el valor de la integral
# ==============================================================================         
function int_cuad = integral_cuadratura(f,a,b,tabla)
  int_cuad = 0.5*(b-a)*tabla(:,2)'*f(0.5*(b-a)*tabla(:,1)+0.5*(b+a));
  % se utiliza el producto escalar para evitar tener que sumar de forma explicita
end
