%================metodo jacobi===============================================
% Resolucion del sistema mediante Jacobi. 
% Entrada: A matriz cuadrada (n,n) con los coeficientes del sistema
%          x0 aproximacion inicial
%          b vector solucion del sistema
%          terror variable que indica si la aproximacion debe determinarse a 
%          partir de error absoluto (terror = 0) o error relativo (terror = 1)  
%          tol tolerancia preestablecida para criterio de corte
%          iter_max cantidad maxima de iteraciones a realizar en caso que no se
%          cumpla la tolerancia para una dada cantidad de iteraciones
% Salida:  x1 solucion del sistema
%          iter cantidad de iteraciones realizadas para resolver el sistema
% ==============================================================================
function [x1, iter]= metodo_jacobi(A,b, x0, terror, tol, iter_max)

n = length(b);
x00= x0;
x1 = zeros(1,n);
iter= 0;
error= 1;

if terror == 0; % error absoluto
  while error>tol
    iter= iter+1;
    for i= 1:n
      suma= 0;
      for j= 1:n
        if i~=j       %sumo para i distinto de j
         suma= suma+A(i,j)*x00(j);
        end
      end
      x1(i)=(b(i)-suma)/A(i,i); % calculo x
    end
    error= norm(x00-x1); % calculo la norma 2 del error absoluto
    x00=x1;      % inicializo x con la ultima aproximacion
    if iter>=iter_max % controlo la cantidad de iteraciones
      break;
    end
  end
else if terror == 1; % error relativo
  while error>tol*norm(x00)
    iter= iter+1;
    for i= 1:n
      suma= 0;
      for j= 1:n
        if i~=j       %sumo para i distinto de j
         suma= suma+A(i,j)*x00(j);
        end
      end
      x1(i)=(b(i)-suma)/A(i,i); % calculo x
    end
    error= norm(x00-x1); % calculo la norma 2 del error absoluto
    x00=x1;      % inicializo x con la ultima aproximacion
    if iter>=iter_max % controlo la cantidad de iteraciones
      break;
    end
  end
end
end 
