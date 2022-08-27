%%%%================metodo jacobi===============================================
%  Resolucion del sistema mediante Jacobi que aprovecha las bondades del lenguaje
% (por eso 'potente').
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
function [x1, iter]= metodo_jacobi_potente(A,b, x0, terror, tol, iter_max)
  
n = length(b);
iter= 0;
error= 1;

if terror == 0;
  while error>tol
    iter= iter+1;
    suma = A*x0 - diag(A).*x0;
    x1=(b-suma)./diag(A); % calculo x

    error= norm(x0-x1); % calculo la norma 2 del error absoluto
    x0=x1;      % inicializo x con la ultima aproximacion
    if iter>= iter_max % controlo la cantidad de iteraciones
      break;
    end
  end
else if terror ==1 ;
  while error>tol*norm(x0)
    iter= iter+1;
    suma = A*x0 - diag(A).*x0;
    x1=(b-suma)./diag(A); % calculo x

    error= norm(x0-x1); % calculo la norma 2 del error absoluto
    x0=x1;      % inicializo x con la ultima aproximacion
    if iter>= iter_max % controlo la cantidad de iteraciones
      break;
    end
  end
end
end
