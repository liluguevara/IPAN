% metodo de diferencias finitas, basado en el codigo del libro Burden ==========
% para resolver ecuaciones diferenciales con condiciones de contorno de Dirichlet
%donde la ecuacion diferencial tiene que estar expresada
% como: y''= p(x)y' + q(x)y + r(x) para determinar p(x), q(x) y r(x).   
% Entrada: aa y bb: limites 
%          h: paso
%          w0 y wn: condiciones de contorno en aa y bb respectivamente
%          p, q y r: funciones anonimas
% Salida: x: vector donde se determina la solucion
%         w: solucion
% ==============================================================================
function[x,w] = diferencias_finitas_dirichlet(aa,bb,h,w0,wn,p,q,r)
x = [aa:h:bb];
N = length(x);

% inicializo las variables
w = zeros(N,1);
a = zeros(N-2,1);
b = zeros(N-2,1);
c = zeros(N-2,1);
d = zeros(N-2,1);
u = zeros(N-2,1);
l = zeros(N-2,1);
z = zeros(N-2,1);

a(1) = 2 + h^2*q(x(2));
b(1) = -1 + h/2*p(x(2));
d(1) = -h^2*r(x(2)) + (1 + h/2*p(x(2)))*w0;

for i = 2: N-3;
  a(i) = 2 + h^2*q(x(i+1));
  b(i) = -1 + h/2*p(x(i+1));
  c(i) = -1 -h/2*p(x(i+1));
  d(i) = -h^2*r(x(i+1));
end

a(N-2) = 2 + h^2*q(x(N-1));
c(N-2) = -1 - h/2*p(x(N-1));
d(N-2) = -h^2*r(x(N-1)) + (1 - h/2*p(x(N-1)))*wn;

% resuelvo el sistema tridiagonal:
l(1) = a(1);
u(1) = b(1)/a(1);
z(1) = d(1)/l(1);

for i = 2, N-3;
  l(i) = a(i) - c(i)*u(i-1);
  u(i) = b(i)/l(i);
  z(i) = (d(i)-c(i)*z(i-1))/l(i);
end

l(N-2) = a(N-2)-c(N-2)*u(N-3);
z(N-2) = (d(N-2)-c(N-2)*z(N-3))/l(N-2);

w(1) = w0;
w(N) = wn;
w(N-1) = z(N-2);

for i = N-2:-1:2
  w(i) = z(i-1)-u(i-1)*w(i+1);
end

end
