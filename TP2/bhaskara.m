% Determinacion de raices cuadraticas mediante Bhaskara ========================
% variables de entrada: a: escalar termino cuadratico
%                       b: escalar de termino lineal
%                       c: escalar de termino independiente
% variables de salida:  x1,x2: raices reales o la parte real
%                       y compleja en caso que sean imaginarias
%                       tipo: variable entera igual a 1 (true) para raices 
%                       reales y 0 (false) para raices para raices complejas
% ==============================================================================
function [x1, x2, tipo] = bhaskara(a, b, c)
% inicializo las varibles 
d1 = 0.0;  
d2 = 0.0;
d3 = 0.0;
x1 = 0.0;
x2 = 0.0;
tipo = 1; % inicializo para raices reales

d1 = b^2-4.0*a*c; % el discriminante
d2 = 2.0*a;       % el denominador
d3 = sqrt(abs(b^2-4.0*a*c));  %la raiz del valor absoluto del discriminante
                                   % para el caso complejo
if(d1 == 0.0)   % si el discriminante es igual a cero las raices son reales e iguales
  x1 = -b/d2;
  x2 = x1; 
elseif(d1 > 0.0) % si el discriminante es mayor que cero las raices son reales y distintas 
  x1 = (-b+d3)/d2;
  x2 = (-b-d3)/d2;
else % caso discriminante < 0, raices complejas de a pares conjugados           
  x1 = -b/d2;  % guardo en x1 la parte real de la raiz
  x2 = d3/d2;  %guardo en x2 la parte compleja de la raiz
  tipo = 0; % cambio tipo a cero para el caso de raices complejas
end 

end