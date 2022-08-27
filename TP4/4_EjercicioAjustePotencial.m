% ==============================================================================
%  Ajuste por minimos cuadrados de funcion potencial linealizada
% ==============================================================================
clc;clear;close all

% datos de entrada
x=[0 300 600 900 1200 1500 2000 2000 2500 3000 3500 4000 4500];   
y= [500 1900 3250 4300 5450 6600 8100 9000 9350 9500 9700 9850 10000];
n = [false true true true true true true true true true true true true];

disp('Ajuste potencial y = A*X^B'); 
coef=polyfit(log(x(n)),log(y(n)),1); % linealizo el problema tomando logaritmo, 
% pero entonces el primer par ordenado no lo puedo utilizar       
A=exp(coef(2));  %logaritmos de los datos                    
B=coef(1);
disp(['A =',num2str(A)])
disp(['B =',num2str(B)])
xt=x(1):0.01:x(end);

figure 1 % grafico los puntos que se utilizaran para el calculo del polinomio interpolante
plot(x,y,'o');
hold on  
plot(xt,A*xt.^B,'m') % grafico la funcion potencial
legend('pares ordenados', 'ajuste potencial')
title('Ajuste por minimos cuadrados') 
xlabel('P[kg]')
ylabel('ΔL')

% Calculo del error cuadratico medio
e_pot=sum((y(n)-A*x(n).^B).^2)/length(x(n));
fprintf('El error cuadratico medio es %f \n', e_pot) 
