% Ejercicio 6 ==================================================================
% velocidad y aceleracion de un objeto =========================================
clc; clear all; close all;
% datos de entrada
t = [0:1:5]; % [s]
d = [0.0 2.0 8.0 18.0 32.0 50.0]; % [cm]
h = t(2)-t(1);
% velocidad: derivada primera
v = der_primera_centrada(d,h);
disp('La velocidad es:')
disp(v)
% aceleracion: derivada sgunda
a = der_segunda_centrada(d,h);
disp('La aceleracion es:')
disp(a)