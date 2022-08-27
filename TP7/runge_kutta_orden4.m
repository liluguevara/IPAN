# Runge Kutta orden 4 ==========================================================
# # Entrada: funcion anonima que en general depende de (x,y)
#          h paso a utilizar
#          xn limite superior de integracion 
#          x0, y0 condiciones iniciales
# Salida: x, y pares ordenados con la solucion 
# ==============================================================================
function [x,y]=runge_kutta_orden4(f,h,x0,xn,y0) 

  x = [x0:h:xn];
  n = length(x);
  y = zeros(1,n);
  y(1) = y0;

for k=1:n-1;

k1 = f(x(k),y(k));
k2 = f(x(k)+h/2,y(k)+h/2*k1);
k3 = f(x(k)+h/2,y(k)+h/2*k2);
k4 = f(x(k)+h,y(k)+h*k3);

y(k+1)=y(k)+h/6*(k1+2*k2+2*k3+k4);

        
end

end
