% Ejercicio 2: factorizacion PA=LU =============================================
clc; clear; close all;
% la matriz A y el vector b estan guardados en archivos
% A1 y b1 en matriz1.dat, A2 y b2 en matriz2.dat, A3 y b3 en matriz3.dat
M = load('matriz2.dat');
n = length(M(:,1));
A = M(:,1:3); % a las primeras tres columnas
b = M(:,4); % b la cuarta columna
P = eye(n);
L = eye(n);
U = zeros(n);

% permutacion de la matriz a:

for i = 1: n-1
  [val_a, index_a] = max(abs(A(i:n,i)));
  
  if(abs(val_a) <= 1E-8)
    disp('elemento nulo en la diagonal')
    stop
  else
    A([i index_a+i-1],:) = A([index_a+i-1,i], :);
    P([i index_a+i-1],:) = P([index_a+i-1,i],:);
   
  endif
endfor 


%A = [2 3 2; 0 1 2; 1 2 3];
%P = [0 0 1; 1 0 0; 0 1 0];

U(1,:) = A(1,:);
L(:,1) = A(:,1)./U(1,1);

for i = 2: n-1;
  U(i,i) = A(i,i) - sum((L(i,1:i-1))'.*U(1:i-1,i));
  for j = i+1: n;
    U(i,j) = A(i,j)-sum((L(i,1:i-1))'.*U(1:i-1,j));
    L(j,i) = 1/U(i,i)*(A(j,i)-sum((L(j,1:i-1))'.*U(1:i-1,i)));
  endfor
endfor
  
U(n,n) = A(n,n) - sum((L(n,1:n-1))'.*U(1:n-1,n));

%sustitución hacia adelante

b = P*b;
for i = 2: n
  suma = b(i);
    for j =1: i-1
      suma = suma - L(i,j)*b(j);
    end
    b(i) = suma;
end
  
%sustitución hacia atrás

x(n)  = b(n)/U(n,n);
for i = n-1: -1: 1
  suma = 0;
  for j = i + 1: n
    suma = suma + U(i,j)*x(j);
  end
  x(i) = (b(i) - suma)/U(i,i);
end

disp('La solucion del sistema mediante el codigo implementado es :')
disp(x)

%===============================================================================
% c) Comparacion codigo con funcion de factorizacion lu() y resolucion mediante
% y= L\(P*b) y x = U\y
% cargamos nuevamente la matriz y el vector b ==================================
M = load('matriz2.dat');
n = length(M(:,1));
A = M(:,1:3); 
b = M(:,4);
[Lc Uc Pc] = lu(A);
yc = Lc\(Pc*b);
xc = Uc\yc;
disp('La sulucion del sistema mediante la funcion de Octave es: ')
disp(x) 

% ==============================================================================
% Matriz tri-diagonal: resolucion que explota la naturaleza del sistema
% De la matriz necesito solo los elementos no nulos.
% ==============================================================================
% cargo la matriz (tres vectores columna completando la primera y la ultim fila 
% con cero en el lugar correspondiente) y los vectores b de los tres items en 
%el archivo matriz_e.txt
M = load('matriz_e.txt');
e = M(:,1);
f = M(:,2);
g = M(:,3);
b1 = M(:,4);
b2 = M(:,5);
b3 = M(:,6);
n = length(e);
x = zeros(1,n); % inicialiacion del vector solucion
% r = bi. Asigno a r el vector b que quiero resolver
r = b1;
% descomposicion:
for k=2:n
  e(k) = e(k)/f(k-1);
  f(k) = f(k) - e(k)*g(k-1);
end
% sustitucion hacia adelante
for k =2:n
  r(k) = r(k) - e(k)*r(k-1);
end
% sustitucion hacia atras
x(end) = r(end)/f(end);
for k = n-1:-1:1
  x(k) = (r(k) - g(k)*x(k+1))/f(k);
end
disp('Solucion del sistema tridiagonal: ')
disp(x)