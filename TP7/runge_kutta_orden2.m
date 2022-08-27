# Runge Kutta orden 2 ==========================================================
# # Entrada: funcion anonima que en general depende de (x,y)
#          h paso a utilizar
#          xn limite superior de integracion 
#          x0, y0 condiciones iniciales
# Salida: x, y pares ordenados con la solucion 
# ==============================================================================
function [x,y] = runge_kutta_orden2(f,h,x0,xn,y0)
  x = [x0:h:xn];
  n = length(x);
  y = zeros(1,n);
  y(1) = y0;

  for i = 1:n-1
    k1 = f(x(i),y(i));
    k2 = f(x(i+1),h*k1);
    y(i+1) = y(i) + 0.5*h*(k1+k2);
  end
end
