%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Funcion que calcula los coeficientes del polinomio de interpolacion 
% mediante el metodo de Lagrange.
% Argumentos:
%     x : valores de abscisas de los puntos a intepolar (vector fila)
%     y : valores de ordenadas de los puntos a interpolar (vector fila)
% Salida
%     coef: coeficientes del polinomio de interpolacion (vector fila) 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function coef = interp_lagrange(x,y)

% Numero de puntos en los que se debe interpolar
N = length (x);

% Inicializacion del vector que contendra los coeficientes
coef = 0;
Ln=zeros(N);    % Inicializamos matriz de Lagrangianos

 for i = 1:N
     
     % Inicializacion de las variables que contendran el numerador
     % expresion de los polinomios L
     l = 1;
     
     % Dentro de este bucle se calculan los coeficientes de los polinomios
     % L, podemos ver el indice i como el indice de la sumatoria y el
     % indice j como el de la productoria
     for j=1:N
         if i~=j
          l = conv(l,([1 -x(j)]/(x(i) - x(j))));
         end
     end
     
     Ln(i,:)=l;
     
     % Calculo de los coeficientes del polinomio interpolante
     coef = coef + (y(i)*Ln(i,:));
 end
 
 