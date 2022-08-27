%===================metodo Gauss Seidel=========================================
% Resolucion del sistema mediante Gauss Seidel
% Entrada: A matriz cuadrada (n,n) con los coeficientes del sistema
%          x0 aproximacion inicial
%          b vector solucion del sistema
%          terror variable que indica si la aproximacion debe determinarse a 
%          partir de error absoluto (terror = 0) o error relativo (terror = 1)
%          tol tolerancia preestablecida para criterio de corte
%          iter_max cantidad maxima de iteraciones a realizar en caso que no sec
%          cumpla la tolerancia para una dada cantidad de iteraciones
% Salida:  x1 solucion del sistema
%          iter cantidad de iteraciones realizadas para resolver el sistema
% ==============================================================================
function [x1, iter]= metodo_gseidel(A,b, x0, terror, tol, iter_max)

n = length(b);
x00= x0;
x1 = zeros(1,n);
iter= 0;
error= 1;

if terror == 0; 
  while error> tol
    iter= iter+1;
    for i= 1:n
      suma1=0;
      for j= 1:i-1                                 
        suma1= suma1+A(i,j)*x1(j);  
      end
      suma2=0;
      for j= i+1:n                                 
        suma2= suma2+A(i,j)*x00(j);  
      end
      x1(i)=(b(i)-suma1-suma2)/A(i,i);
    end
    error= norm(x00-x1);
    x00=x1;
    if iter>=iter_max
      break;
    end
  end
else if terror ==1;
  while error> tol*norm(x1)
    iter= iter+1;
    for i= 1:n
      suma1=0;
      for j= 1:i-1                                 
        suma1= suma1+A(i,j)*x1(j);  
      end
      suma2=0;
      for j= i+1:n                                 
        suma2= suma2+A(i,j)*x00(j);  
      end
      x1(i)=(b(i)-suma1-suma2)/A(i,i);
    end
    error= norm(x00-x1);
    x00=x1;
    if iter>=iter_max
      break;
    end
  end
end
end  
