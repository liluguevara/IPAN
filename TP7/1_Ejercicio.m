# Ejercicio 1: Ecuaciones diferenciales Problema de Valor Inicial (PVI) ========

clc; clear all; close all;

f = @(x,y) -y + x +1; 
sol = @(x) x + exp(-x);
x0 = 0.0;
xn = 1.0;
y0 = 1.0;
h = [0.05 0.025 0.0125];

for i = 1:length(h)
  [xe,ye] = euler(f,h(i),x0,xn,y0);
  [xem,yem] = euler_modificado(f,h(i),x0,xn,y0);
  [xrk4,yrk4] = runge_kutta_orden4(f,h(i),x0,xn,y0);

  error_e = sqrt(sum((sol(xe)-ye).^2));
  error_em = sqrt(sum((sol(xem)-yem).^2));
  error_rk4 = sqrt(sum((sol(xrk4)-yrk4).^2));
  
  fprintf('La norma 2 del error con euler: %f \n', error_e)
  fprintf('La norma 2 del error con euler modificado: %f \n', error_em)
  fprintf('La norma 2 del error con R-K orden 4: %f \n', error_rk4)
  
  figure (i)
  plot(xe,sol(xe))
  hold on
  plot(xe,ye,'*c')
  plot(xem,yem,'oc')
  plot(xrk4,yrk4,'sc')
  legend('Solucion analitica','Euler', 'Euler modificado', 'R-K orden 4')
  title('Comparacion metodos de resolucion ecuaciones diferenciales PVI')
end

