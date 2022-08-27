% Programa ilusion optica ==================================================
% Este ejercicio tiene como objetivo la familiarizacion de los comandos 
% necesarios para graficar, en particular: plot, hold on, equal axis
%============================================================================
% comandos para que limpie las variables del espacio de trabajo 
%y cierre figuras previas
clc;clear; close all; 
% defino las funciones como funciones anonimas 
x=@(t)2*cos(t);
y=@(t)5*sin(t);
x2=@(t)cos(t).*(exp(cos(t))-2.0*cos(4.0*t)-sin(t/12.0).^5);
y2=@(t)sin(t).*(exp(cos(t))-2.0*cos(4.0*t)-sin(t/12.0).^5);

% defino el vector con los angulos (en radianes) en los que se va a evaluar 
% la fucion
t=[0:2*pi/50:2*pi];

% realizo los graficos, cada uno en una figura diferente
figure 1
plot(t(:), x(t)) 

figure 2
plot(t(:), y(t))

figure 3 
plot(x(t), y(t))
%axis equal % en este caso observo la grafica sin y con la sentencia axis equal 

% grafico de a trazos x2 vs y2
figure 4 
axis([-4 4 -4 4])
 hold on
for i=1:length(t)-1
plot(x2(t(i:i+1)),y2(t(i:i+1)), 'c');
pause(1/10);
end
hold off

