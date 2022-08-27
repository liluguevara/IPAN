# Runge Kutta orden 4 ==========================================================
# Misma funcion que runge_kutta_orden4 pero modificada por no contar con el 
# limite superior xn. La funcion a integrar es una raiz. Luego se utiliza el 
# hecho de que la raiz de un numero negativo cambia la variable de real a 
# compleja como criterio de corte. Se implementa con la funcion isreal() 
# Entrada: funcion anonima que en general depende de (x,y)
#          h paso a utilizar
#          x0, y0 condiciones iniciales
# Salida: x, y pares ordenados con la solucion 
# ==============================================================================
function [x,y]=runge_tanque(f, h, x0, y0) 

x(1) = x0;
y(1) = y0(1);
cont = 1;

while(isreal(y(cont))); % como ahora no conozco el intervalo lo implemento con un while

  k1 = f(x(cont),y(cont));
  k2 = f(x(cont)+h/2,y(cont)+h/2*k1);
  k3 = f(x(cont)+h/2,y(cont)+h/2*k2);
  k4 = f(x(cont)+h,y(cont)+h*k3);
  y(cont+1)=y(cont)+h/6*(k1+2*k2+2*k3+k4); % mientras y (que representa la altura) sea real
  x(cont+1) = x(cont) + h;                 % agrego valores al arreglo x 
  cont = cont +1 ;
        
end

end
