% Funcion newton sistemas ======================================================
% Resolucion de sistema de dos ecuacion no lineales ============================
% Entrada: f1 = f1(x,y) funcion anonima a determinar la raiz f1(x,y)
%          df1x funcion anonima de la derivada de f1 respecto de x 
%          df1y funcion anonima de la derivada de f1 respecto de y 
%          f2  = f2(x,y) funcion anonima a determinar la raiz
%          df2x funcion anonima de la derivada de f2 respecto de x 
%          df2y funcion anonima de la derivada de f2 respecto de y 
%          x0 aproximacion inicial
%          N numero maximo de iteraciones
%          tol tolerancia preestablecida para el criterio de corte: la diferencia
%          entre dos interciones sucesivas (error absoluto o relativo) debe ser 
%          menor a tol
% Salida   raiz aproximacion a la raiz
%          iter cantidad de iteraciones realizadas
%          clave permite identificar si se determino la raiz (calve = 0) o si se 
%          alcanzo el numero maximo de iteraciones (clave = 1)
% ==============================================================================
function [raiz,iter,clave]= newton_sistemas(f1,df1x,df1y,f2,df2x,df2y,x0,N,tol)
 
  raiz = zeros(2,1); %raiz ahora es un vector de dimension M
  iter = 0;
  clave = 1;
  xx1 = x0(1);
  xx2 = x0(2);

  f_jacob_inv = zeros(2,2);
  f_val = zeros(2,1);
  %raiz = zeros(2,1);
  
  for i=1:N
    m= [df1x(xx1,xx2) df1y(xx1,xx2); df2x(xx1,xx2) df2y(xx1,xx2)]; 
    f_jacob_inv = inv(m);
    f_val = [f1(xx1,xx2);f2(xx1,xx2)];
      
      raiz(1) = xx1 - f_jacob_inv(1,1)*f_val(1) - f_jacob_inv(1,2)*f_val(2);
      raiz(2) = xx2 - f_jacob_inv(2,1)*f_val(1) - f_jacob_inv(2,2)*f_val(2);
      
    if((abs(raiz(1)-xx1) < tol*abs(raiz(1))) && (abs(raiz(2)-xx2) < tol*abs(raiz(2))))
      clave = 0;
      iter = i;
      break;
    endif

  xx1 = raiz(1);
  xx2 = raiz(2);
  endfor  
endfunction