% Ejercicio 3 ==================================================================
% Metodos iterativos de resolucion de sistemas de ecuaciones: Jacobi y 
% Gauss-Seidel. Comparacion entre convergencia entre ellos y criterio de 
% elementos de diagonal dominante para garantizar la convergencia.
 
% ejercicio 3 b
disp('')
disp('Ejercicio 3b')
disp('')
A = [3 2; 1 2];
b = [1 -1];
x0 = [0 0];
tol = 5E-5; % asociada a error relativo
terror = 1; % luego terror = 1
iter_max = 500;

[x_gs, iter_gs]= metodo_gseidel(A,b,x0, terror, tol, iter_max);
[x_j, iter_j]= metodo_jacobi(A,b,x0, terror, tol, iter_max);
fprintf('Mediante el metodo de jacobi se realizaron %d iteraciones y la solucion es \n', iter_j)
disp(x_j)
fprintf('Mediante el metodo de Gauss-Seidel se realizaron %d iteraciones y la solucion es \n', iter_gs)
disp(x_gs)

% ejercicio 3 d
disp('')
disp('Ejercicio 3d')
disp('')
A = [1 -5; 7 -1];
b = [-4 6];

[x_gs, iter_gs]= metodo_gseidel(A,b,x0, terror, tol, iter_max);
[x_j, iter_j]= metodo_jacobi(A,b,x0, terror, tol, iter_max);
fprintf('Mediante el metodo de jacobi se realizaron %d iteraciones y la solucion es \n', iter_j)
disp(x_j)
fprintf('Mediante el metodo de Gauss-Seidel se realizaron %d iteraciones y la solucion es \n', iter_gs)
disp(x_gs)

% ejercicio 3 d ii) intercambio las filas para que A cumpla con el criterio de 
% convergencia
disp('')
disp('Ejercicio 3d intercambiando filas para que la matriz sea diagonal dominante')
disp('')
A = [7 -1; 1 -5];
b = [6 -4];

[x_gs, iter_gs]= metodo_gseidel(A,b,x0, terror, tol, iter_max);
[x_j, iter_j]= metodo_jacobi(A,b,x0, terror, tol, iter_max);
fprintf('Mediante el metodo de jacobi se realizaron %d iteraciones y la solucion es \n', iter_j)
disp(x_j)
fprintf('Mediante el metodo de Gauss-Seidel se realizaron %d iteraciones y la solucion es \n', iter_gs)
disp(x_gs)

% ejercicio3 e) 
% i)
disp('')
disp('Ejercicio 3e i)')
disp('')
A = [3.8 1.6 0.9; -0.7 5.4 1.6;  1.5 1.1 3.2];
b = [15.5; 10.3; 3.5];
x0 = [0;0;0];
[x_gs, iter_gs]= metodo_gseidel(A,b,x0, terror, tol, iter_max);
[x_j, iter_j]= metodo_jacobi(A,b,x0, terror, tol, iter_max);
fprintf('Mediante el metodo de jacobi se realizaron %d iteraciones y la solucion es \n', iter_j)
disp(x_j)
fprintf('Mediante el metodo de Gauss-Seidel se realizaron %d iteraciones y la solucion es \n', iter_gs)
disp(x_gs)

%ii)
disp('')
disp('Ejercicio 3e ii)')
disp('')
A = [1 0 1; -1 1 0; 1 2 -3];
b = [4; 1; -4];
x0 = [0; 0; 0];
[x_gs, iter_gs]= metodo_gseidel(A,b,x0, terror, tol, iter_max);
[x_j, iter_j]= metodo_jacobi(A,b,x0, terror, tol, iter_max);
fprintf('Mediante el metodo de jacobi se realizaron %d iteraciones y la solucion es \n', iter_j)
disp(x_j)
fprintf('Mediante el metodo de Gauss-Seidel se realizaron %d iteraciones y la solucion es \n', iter_gs)
disp(x_gs)

% iii)
disp('')
disp('Ejercicio 3e iii)')
disp('')
A = [1 0.5 0.5; 0.5 1 0.5; 0.5 0.5 1];
b = [2; 2; 2];
x0 = [0 0 0]';
[x_gs, iter_gs]= metodo_gseidel(A,b,x0, terror, tol, iter_max);
[x_j, iter_j]= metodo_jacobi(A,b,x0, terror, tol, iter_max);
fprintf('Mediante el metodo de jacobi se realizaron %d iteraciones y la solucion es \n', iter_j)
disp(x_j)
fprintf('Mediante el metodo de Gauss-Seidel se realizaron %d iteraciones y la solucion es \n', iter_gs)
disp(x_gs)