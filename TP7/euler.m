# Euler  =======================================================================
# Entrada: funcion anonima que en general depende de (x,y)
#          h paso a utilizar
#          xn limite superior de integracion 
#          x0, y0 condiciones iniciales
# Salida:  x, y pares ordenados con la solucion
# ==============================================================================
function [x,y]=euler(f, h, x0, xn, y0) 

  x = [x0:h:xn];
  n = length(x);
  y = zeros(1,n);
  y(1) = y0(1);

for k=1:n-1;
        
	y(k+1)=y(k)+h*f(x(k),y(k));
        
end

end
