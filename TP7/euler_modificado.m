# Euler mejorado-Heun ==========================================================
# Entrada: funcion anonima que en general depende de (x,y)
#          h paso a utilizar
#          xn limite superior de integracion 
#          x0, y0 condiciones iniciales
# Salida:  x, y pares ordenados con la solucion 
#===============================================================================
function [x, y] = euler_modificado(f,h,x0,xn,y0)  

x = [x0:h:xn];
n = length(x);
y = zeros(1,n);
y(1) = y0;
for i = 1:n-1
   y(i+1) = y(i) + h/2*(f(x(i),y(i))+f(x(i+1),y(i)+h*f(x(i),y(i))));
end

end 