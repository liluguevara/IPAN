# Ejercicio 1 ==================================================================
clc; clear all; close all;

% definicion de las funciones anonimas
f = @(x) 1.0./(1.0+x.^2);
g = @(x) (2.0.*x + 1.0)./(x.^2+x);
% parametros de entrada
af = 0.0;
bf = 1.0;
ag = 1.0;
bg = 2.0;

% a) trapecio simple
yft = [f(af) f(bf)];
ygt = [g(ag) g(bg)];
int_trap_simple_f = integral_trapecio_simple(yft,af,bf);
fprintf('La integral mediante trapecio simple de 1.0./(1.0+x.^2) entre %.1f y % .1f es %f \n', af, bf, int_trap_simple_f)
int_trap_simple_g = integral_trapecio_simple(ygt,ag,bg);
fprintf('La integral mediante trapecio simple de (2.0.*x + 1.0)./(x.^2+x) entre %.1f y % .1f es %f \n', ag, bg, int_trap_simple_g)

% b) simpson simple
yfs = [f(af) f((af+bf)*0.5) f(bf)];
ygs = [g(ag) g((ag+bg)*0.5) g(bg)];
int_simpson_simple_f = integral_simpson_simple(yfs,af,bf);
fprintf('La integral mediante simpson simple de 1.0./(1.0+x.^2) entre %.1f y % .1f es %f \n', af, bf, int_simpson_simple_f)
int_simpson_simple_g = integral_simpson_simple(ygs,ag,bg);
fprintf('La integral mediante simpson simple de (2.0.*x + 1.0)./(x.^2+x) entre %.1f y % .1f es %f \n', ag, bg, int_simpson_simple_g)

% c) 
a=0; % limite inferior de integración
b=1; % limite superior de integración
f=@(x)(1./(1+x.^2)); % define la funcion a integrar
xt=a:0.01:b; % define un vector para graficar
yt=f(xt);
plot(xt,yt,'Linewidth',2) % grafica la funcion definida
P1=f(a)+(f(b)-f(a))/(b-a).*(xt-a);
hold on
plot(xt,P1,'c') % aproximación mediante un trapecio
Itrap=(f(b)+f(a))/2*(b-a) % calcula el valor de la integral
h=(b-a)/2;
x2=[a (b+a)/2 b];
y2=f(x2);
plot(x2,y2,'o') % aproximación con un polinomio de orden 2
P2= f(a)+(f(a+h)-f(a))/h.*(xt-a)+ (f(b)-2*f(a+h) +f(a))/2/h.^2.*(xt-a).*(xt-a-h);
plot(xt,P2,'g')
Isimp=h/3*(f(b)+4*f(a+h)+f(a)) % Calcula el valor de la integral

% d) 
h = 0.1;
xf = [af:h:bf];
yf = f(xf);
xg = [ag:h:bg];
yg = g(xg);
int_trap_com_f = integral_trapecio_compuesto_potente(yf,h);
fprintf('La integral mediante trapecio compuesto de 1.0./(1.0+x.^2) entre %.1f y % .1f es %f \n', af, bf, int_trap_com_f)
int_trap_com_g  = integral_trapecio_compuesto_potente(yg,h);
fprintf('La integral mediante trapecio compuesto de (2.0.*x + 1.0)./(x.^2+x) entre %.1f y % .1f es %f \n', ag, bg, int_trap_com_g)
int_simpson_com_f = integral_simpson_compuesto_potente(yf,h);
fprintf('La integral mediante simpson compuesto de 1.0./(1.0+x.^2) entre %.1f y % .1f es %f \n', af, bf, int_simpson_com_f)
int_simpson_com_g  = integral_simpson_compuesto_potente(yg,h);
fprintf('La integral mediante simpson compuesto de (2.0.*x + 1.0)./(x.^2+x) entre %.1f y % .1f es %f \n', ag, bg, int_simpson_com_g)

