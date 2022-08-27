% Funcion biseccion ============================================================
% Resolucion de ecuacion no lineal. Error absoluto como criterio de corte ======
% Entrada: a,b limite inferior y superior del intervalo, resp.
%          f funcion anonima
%          terror variable que indica si la aproximacion debe determinarse a 
%          partir de error absoluto (terror = 0) o error relativo (terror = 1) 
%          tol tolerancia preestablecida para el criterio de corte: la diferencia
%          entre dos interciones sucesivas (error absoluto o relativo) debe ser 
%          menor a tol
%          N numero maximo de iteraciones
% Salida   raiz aproximacion a la raiz
%          iter cantidad de iteraciones realizadas
%          clave permite identificar si se determino la raiz (calve = 0), si se 
%          alcanzo el numero maximo de iteraciones (clave = 1) o si el intervalo
%          esta mal definido (clave = 2)
% ==============================================================================
function[raiz, iter, clave] = biseccion(a, b, f, terror, tol, N)

raiz = 0.0;    %Tratar de identificar para que se define cada variable y que
iter = N;      % se calcula en cada sentencia.
clave = 1;     %La variable clave ayuda sobre todo a identificar el motivo
xl = a;        %por el cual el metodo puede fallar. No es necesaria pero es util
xr = b;        % Para el caso de biseccion toma los valores de 2, 1 o 0 si el intervalo
               % esta mal definido, si se alcanza el numero maximo de iteraciones o
               % si se encuentra la raiz, respectivamente. El valor de clave es
               % dentificado a partir de un if en el programa principal 
if (sign(f(xl)) * sign(f(xr)) > 0.0);
  clave =2;
  return;      % que funcion cumple la declaracion return? Buscar!
end

if terror == 0

for i= 1:N;

  clave = 1;
  error = 0.5*(xr - xl);  
  raiz = xl + error;
 
  if(error < tol)
  iter = i;
  clave = 0;
  break;  % que funcion cumple la declaracion break? Buscar!
 
  else
 
    if(sign(f(xl)) * sign(f(raiz)) > 0.0); 
      xl = raiz;         
    elseif(sign(f(xr)) * sign(f(raiz)) > 0.0);
      xr = raiz;         
    else
        iter = i;
        clave = 0;
        break;
    end
 end
 
end 

elseif terror == 1

for i= 1:N;

  clave = 1;
  error = 0.5*(xr - xl);  
  raiz = xl + error;
 
  if(error < tol*abs(raiz))
  iter = i;
  clave = 0;
  break;  % que funcion cumple la declaracion break? Buscar!
 
  else
 
    if(sign(f(xl)) * sign(f(raiz)) > 0.0); 
      xl = raiz;         
    elseif(sign(f(xr)) * sign(f(raiz)) > 0.0);
      xr = raiz;         
    else
        iter = i;
        clave = 0;
        break;
    end
 end
 
end 

end 
end
