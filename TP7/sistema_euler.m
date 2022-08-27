# Euler: sistema de dos ecuaciones  ============================================
# Entrada: funcion anonima que en general depende de (x,y1,y2)
#          h paso a utilizar
#          xn limite superior de integracion 
#          x0, y0 condiciones iniciales donde ahora y0 es un arreglo de 2 elementos
# Salida:  x, y1, y2 pares ordenados con la solucion
# ==============================================================================
function [x,y1,y2]=sistema_euler(f,g,h,x0,xn,y0) 

  x = [x0:h:xn];
  n = length(x);
  y = zeros(1,n);
  y1(1) = y0(1);
  y2(1) = y0(2);

for k=1:n-1;
        
	y1(k+1)=y1(k)+h*f(x(k), y1(k), y2(k));
	y2(k+1)=y2(k)+h*g(x(k), y1(k), y2(k));
        
end

end
