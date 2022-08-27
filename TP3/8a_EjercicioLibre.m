% Ejercicio 8a: ejercicio opcional ============================================
% Resolvemos mediante la interpolacion polinomica, en particular utilizamos la
% interpolacion de Lagrange. Una interpolacion segmentaria no permite obtener una
% funcion que sea representativa de forma global del problema fisico a resolver.
%==============================================================================
clc; clear all;close all;

vce = [1, 2, 3, 4, 5]; % tension
ib5 = [1.6870, 2.0062, 2.2202, 2.3858, 2.5227]; % corriente

vce_new = 2.5;
coef_lagrange = interp_lagrange(vce, ib5); % interp_lagrange devuelve los coeficientes en orden decreciente
ib5_new = polyval(coef_lagrange, vce_new);  % entonces podemos usar polyval para evaluar el polinomio con dichos coeficientes

figure(1)
plot(vce, ib5, '-om')
hold on
plot(vce_new, ib5_new, '*c')
xlabel('Vce')
ylabel('Ic')
legend('valores tabla', 'valor interpolado')
axis equal
title('Interpolacion polinomica mediante Lagrange')

