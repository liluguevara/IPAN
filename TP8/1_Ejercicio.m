% ejercicio 1 ==================================================================
% determinante y condicionamiento 
% ==============================================================================
clc; clear all;
% a)
A1 = [ 0 1 -1; 2 -1 -1; 1 1 -1];
b1 = [2 0 1];

A2 = [1 0 1; 1 1 1; 1 -1 1];
b2 = [2 3 1];

% i)
detA1 = det(A1);
fprintf('El determinante de la matriz A1 es %f \n', detA1)
detA2 = det(A2); 
fprintf('El determinante de la matriz A2 es %f \n', detA2)

% ii) Item para realizar a mano

% b) 
condA1 = cond(A1);
fprintf('El condicionamiento de la matriz A1 es %f \n', condA1)
condA2 = cond(A2);
fprintf('El condicionamiento de ma matriz A2 es %f \n', condA2) 

% c) 
A1c = [10E-15 1; 1 10E11];
A2c = [10^(-14.6) 1; 1 10E15];
A3c = [10E15 1; 1 10^(-14.6)];

detA1c = det(A1c);
condA1c = cond(A1c);
fprintf('El determinante y el condiciomaniento de A1c son %f y %f, resp. \n', detA1c, condA1c)
detA2c = det(A2c);
condA2c = cond(A2c);
fprintf('El determinante y el condiciomaniento de A2c son %f y %f, resp. \n', detA2c, condA2c)
detA3c = det(A3c);
condA3c = cond(A3c);
fprintf('El determinante y el condiciomaniento de A3c son %f y %f, resp. \n', detA3c, condA3c)