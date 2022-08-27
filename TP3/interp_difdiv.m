%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Funcion que calcula los coeficientes del polinomio de interpolacion 
% mediante el metodo de diferencias divididas
% Entrada:
%     x : valores de abscisas de los puntos a intepolar (vector fila)
%     y : valores de ordenadas de los puntos a interpolar (vector fila)
% Salida
%     coef: coeficientes del polinomio de interpolacion (vector fila), segun
%           la forma del polinomio de Newton mediante diferencias progresivas
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function coef = interp_difdiv(x,y)
% Numero de puntos que se usaran para transferir
n = length(x);

% Inicializacion del vector que contendra los coeficientes
DD = zeros(n);
% La primer columna contiene al vector y
DD(:,1)=y;
for k = 2:n
     
     for i=1:n-k+1
         DD(i,k)=(DD(i+1,k-1)-DD(i,k-1))/(x(k+i-1)-x(i));
     end
     % Dentro de este bucle se calculan los coeficientes del polinomio a partir
     % de la matriz de diferencias divididas. El indice k es el indice que
     % recorre las columnas de la matriz y el indice i recorre las filas.
end
% La primer fila de la matriz de diferencias divididas contiene los
% coeficientes del polinomio interpolante
 coef = DD(1,:);
end
  