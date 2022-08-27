% metodo de diferencias finitas para resolver ecuaciones diferenciales con =====
% valores de contorno de combinadas ===============================================
%donde la ecuacion diferencial tiene que estar expresada
% como: y'' + p(x)y' + q(x)y = r(x) para determinar p(x), q(x) y r(x).   
% Entrada: aa y bb: limites 
%          h: paso
%          a1 y b1 constantes asociadas a aa
%          c1: condicion de contorno en aa: a1*y(aa)'+ b1*y(a) = c1
%          a2 y b2 constantes asociadas a bb
%          c2: condicion de contorno en bb: a2*y(bb)'+ b2*y(bb) = c2
%          p, q y r: funciones anonimas
% Salida: x: vector donde se determina la solucion
%         y: solucion
% ==============================================================================
function[x,y] = diferencias_finitas_combinadas(aa,bb,h,a1,b1,c1,a2,b2,c2,p,q,r)
x = [aa:h:bb]; %recorro en N+1 puntos
n = length(x);

% inicializo las variables
ci = @(x) 1-h/2*p(x);
cc = @(x) h^2*q(x)-2;
cd = @(x) 1+h/2*p(x);
ce = @(x) h^2*r(x);

A = zeros(n-2,n-2);
B = zeros(1,n-2);

% 1ra ecuacion
A(1,1) = cc(x(2))-ci(x(2))*(b1/h)/(a1-b1/h);
A(1,2) = cd(x(2));
B(1) = ce(x(2))-ci(x(2))*c1/(a1-b1/h);

% ultima ecuacion
A(n-2,n-3) = ci(x(n-1));
A(n-2,n-2) = cc(x(n-1))+cd(x(n-1))*(b2/h)/(a2+b2/h);
B(n-2) = ce(x(n-1))-cd(x(n-1))*c2/(a2+b2/h);

% ecuaciones intermedias
for i=2:(n-3)
    A(i,i-1) = ci(x(i+1));
    A(i,i) = cc(x(i+1));
    A(i,i+1) = cd(x(i+1));
    B(i) = ce(x(i+1));
end

s = A\B';

y(1) = c1/(a1-b1/h)-(b1/h)/(a1-b1/h)*s(1);
y(n) = c2/(a2+b2/h)+(b2/h)/(a2+b2/h)*s(n-2);

for i=2:(n-1)
    y(i) = s(i-1);
end


end
