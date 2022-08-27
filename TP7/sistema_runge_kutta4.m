# Runge-Kutta de orden 4: sistema de dos ecuaciones  ===========================
# Entrada: funcion anonima que en general depende de (x,y1,y2)
#          h paso a utilizar
#          xn limite superior de integracion 
#          x0, y0 condiciones iniciales donde ahora y0 es un arreglo de 2 elementos
# Salida:  x, y1, y2 pares ordenados con la solucion
# ==============================================================================
function [x,y1,y2]=sistema_runge_kutta4(f, g, h, x0, xn, y0) 

  x = [x0:h:xn];
  n = length(x);
  y = zeros(1,n);
  y1(1) = y0(1);
  y2(1) = y0(2);

for k=1:n-1;

k11 = f(x(k), y1(k), y2(k));
k21 = g(x(k), y1(k), y2(k));

k12 = f(x(k), y1(k)+h/2*k11, y2(k)+h/2*k21);
k22 = g(x(k), y1(k)+h/2*k11, y2(k)+h/2*k21);

k13 = f(x(k), y1(k)+h/2*k12, y2(k)+h/2*k22);
k23 = g(x(k), y1(k)+h/2*k12, y2(k)+h/2*k22);

k14 = f(x(k), y1(k)+h*k13, y2(k)+h*k23);
k24 = g(x(k), y1(k)+h*k13, y2(k)+h*k23);

y1(k+1)=y1(k)+h/6*(k11+2*k12+2*k13+k14);
y2(k+1)=y2(k)+h/6*(k21+2*k22+2*k23+k24);
        
end

end
