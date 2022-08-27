# Ejercicio 11: ejercicio optativo: deflexion de la barra ======================
# M(x) = P/2*x para 0<x<L/2 y M(x) = P/2*(L-x) para L/2<x<L
# La complejidad del ejercicio esta en que tengo una funcion partida
# En lugar de resolver directamente con diferencias_finitas_dirichlet, al tener
# solo termino r(x) planteo el sistema a resolver usando una aproximacion de 
# la derivada segunda de orden h2: y"=(y(i+1) - 2.0*y(i) + y(i-1))/h2
# Para poder resolver el sistema necesito plantear el problema en al menos tres
# nodos internos. El minimo sistema a resolver sera:
# A = [-2 1 0; 1 -2 1; 0 1 -2]; b = P/2*[(x+h)(x+2.0*h)(x+3.0*h)]
# donde en los extremos se tiene: y(0) = 0 y y(L) = 0
# Ahora, A es una matriz tri-banda, para resolver el sistema utilizamos la 
# optimizacion utilizada la practica de sistema de ecuaciones donde con definir
# solo tres vectores alcanza. Finalmente, tomamos cantidad de nodos impares
# ==============================================================================
clc; clear all; close all;
# datos de entrada
L = 120.0; % [cm]
P = 100.0; % [N]
N =  101; # 1000001; # N = nodos internos son 99 + 2 extremos
h = L/(N-1);
x = [h:h:L-h]; # defino en x solo los nodos internos y despues agrego los extremos
n = length(x); 
d0 = [ones(1, n-1) 0.0];
d = -2.0*ones(1,n);
d1 = [0.0 ones(1,n-1)];
medio = round(n/2); % defino el el indice medio para el cambio del vector v
b = h^2*P/2.0*[-x(1:medio) -(L-x(medio+1:end))];
y = zeros(1,n);
% descomposicion:
for k=2:n
  d0(k) = d0(k)/d(k-1);
  d(k) = d(k) - d0(k)*d1(k-1);
end
% sustitucion hacia adelante
for k =2:n
  b(k) = b(k) - d0(k)*b(k-1);
end
% sustitucion hacia atras
y(end) = b(end)/d(end);
for k = n-1:-1:1
  y(k) = (b(k) - d1(k)*y(k+1))/d(k);
end
# solucion numerica en el centro:
x_medio = x(medio);
y_medio = y(medio);
# solucion analitica en el centro:
y_analitico_medio = P*L^3/48.0;
# sumo las condiciones de contorno a la solucion
x = [0.0 x L];
y = [0.0 y 0.0];
figure 1
plot(x,y, '-c')
title('Deformacion de la barra por una carga puntual en el centro')
axis('ij') 
xlabel('Longitud de la barra [cm]')
ylabel('Deflexion de la barra [E J cm]')
hold on 
plot(x_medio,y_medio,'*c')
plot(x_medio, y_analitico_medio, 'om')

# para una mejor aproximacion se puede considerar mayor cantidad de nodos internos
# es equivalente a achicar h
 error = abs(y_medio - y_analitico_medio)
# Para disminuir significativamente la diferencia hay que considerar del orden de
# 1000000 nodos internos y aun así se observa que la diferencia entre la 
# solucion analitica y la estimada mediante diferencias finitas de orden h2 es 
# mayor a 8 cm. Seria interesante ver que sucede con una aproximacion de mayor orden

# b) Para el caso de la carga distribuida uniformemente al no ser na funcion 
# definida a trozos creo se puede utilizar la funcion diferencias_finitas_dirichlet
# sin inconvenientes. Sino tambien se puede repetir los calculos realizados.