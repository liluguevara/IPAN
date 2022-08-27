# funcion para evaluar una funcion definida a trozos ========================
# parametro de entrada: arreglo x (puede ser escalar o vector)
# paramantro de salida: arreglo y de la misma dimesion que x con su evaluacion
# ===========================================================================
function[y] = funcion_trozos(x)

n = length(x); % calculo la longitud de x
y = zeros(1,n); % vector inicialzado en cero donde se guardaran las evaluaciones de x

for i = 1: n
  if(x(i) < -2.0)
    y(i) = 2.0;
  elseif( -2.0 <= x(i) && x(i) < 3.0)
    y(i) = x(i)^2;
  elseif(3.0 <= x(i) && x(i) <= 10.0)
    y(i) = 1.0/x(i);
  elseif(15.0 < x(i) && x(i) < 20.0)
    y(i) = x(i);
  elseif(x(i) == 22.0)
    y(i) = 3.0 - x(i);
  else
    y(i) = 0.0;
  end
end

