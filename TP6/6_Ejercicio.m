% Ejercicio 6 ==================================================================
% Integral mediante cuadratura gaussiana con dos, tres y cuatro puntos. ========
clc; clear all; 

% funciones a integrar
f = @(x) exp(x).*sin(x)./(1.0+x.^2);
g = @(x) sin(x)./x;
h = @(x) atan(x)./(1.0+x);
i = @(x) log(1.0+x)./(1.0+x.^2);
% limites de integracion
af = 0.0; bf = 3.0;
ag = 0.0; bg = 1.0;
ah = -1.0; bh = 1.0;
ai = 0.0; bi = 1.0;
% tablas con nodos y pesos
tabla2 = load('legendre_2.txt');
tabla3 = load('legendre_3.txt');
tabla4 = load('legendre_4.txt');

int_f_cuad_2 = integral_cuadratura(f,af,bf,tabla2)
int_f_cuad_3 = integral_cuadratura(f,af,bf,tabla3)
int_f_cuad_4 = integral_cuadratura(f,af,bf,tabla4)

int_g_cuad_2 = integral_cuadratura(g,ag,bg,tabla2)
int_g_cuad_3 = integral_cuadratura(g,ag,bg,tabla3)
int_g_cuad_4 = integral_cuadratura(g,ag,bg,tabla4)

int_h_cuad_2 = integral_cuadratura(h,ah,bh,tabla2)
int_h_cuad_3 = integral_cuadratura(h,ah,bh,tabla3)
int_h_cuad_4 = integral_cuadratura(h,ah,bh,tabla4)

int_i_cuad_2 = integral_cuadratura(i,ai,bi,tabla2)
int_i_cuad_3 = integral_cuadratura(i,ai,bi,tabla3)
int_i_cuad_4 = integral_cuadratura(i,ai,bi,tabla4)