% Ejercicio 2 ==================================================================
% Integral de sqrt(x) a partir de valores de una tabla =========================
clc; clear all;

x = [1.0:0.05:1.3];
y = [1.0 1.02470 1.04881 1.07238 1.09544 1.11803 1.14017];
h = x(2) - x(1);

int_rec = integral_rectangulo_potente(y,h);
int_trap_comp = integral_trapecio_compuesto_potente(y,h);
int_simpson_comp = integral_simpson_compuesto_potente(y,h);

fprintf('La integral de sqrt(x) entre %.0f y %.1f mediante las reglas compuestas de rectangulo, trapecio y simpson son %f, %f y %f, respectivamente \n',x(1), x(end), int_rec, int_trap_comp, int_simpson_comp)