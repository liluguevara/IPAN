% Ejercicio 4: vaciado tanque ==================================================
% Para la resolucion de este ejercicio se realizaron adaptaciones de las 
% funciones euler y runge_kutta_orden4
% ==============================================================================
clear all; close all; clc;

k = 0.06;
ht = @(t, h) -k*sqrt(h);

dt = 0.5; %[minutos]
ti = 0; % [minuts]
tf = 15; %[minutos]

h0 = 3; %[metros]

% Altura en el tamque luego de 15 minutos:
[tiempo_euler, altura_tanque_euler] = euler(ht, dt, ti, tf, h0);
[tiempo_runge,altura_tanque_runge] = runge_kutta_orden4(ht, dt, ti, tf, h0);

fprintf('La altura del agua en el tanque estimada con el método de Euler simple luego de %f minutos es de %f metros \n', tf, altura_tanque_euler(end))
fprintf('La altura del agua en el tanque estimada con el método de Runge-Kutta luego de %f minutos es de %f metros \n', tf, altura_tanque_runge(end))

figure 1
plot(tiempo_euler, altura_tanque_euler,'*c')
hold on
plot(tiempo_runge, altura_tanque_runge,'om')
title('Variación de la altura con el tiempo durante los primeros 15 m de vaciado')
legend('Euler simple', 'Runge-Kutta 4')
xlabel('Tiempo [m]')
ylabel('Altura [m]')

%===============================================================================
% Tiempo de vaciado:
% considero en minutos un paso de 1s: dtv = 1/60

dtv = 1/60;

[t_vaciado_euler, altura_vaciado_tanque_euler] = euler_tanque(ht, dt, ti, h0);
[t_vaciado_runge, altura_vaciado_tanque_runge] = runge_tanque(ht, dt, ti, h0);

fprintf('Con dt = %f m y por medio del método de Euler simple, la estimación del tiempo de vaciado (altura %f m) es de %f m \n',dt, altura_vaciado_tanque_euler(end),t_vaciado_euler(end))
fprintf('Con dt = %f m y por medio del método de Runge-kutta 4, la estimación del tiempo de vaciado (altura %f m) es de %f m \n',dt, altura_vaciado_tanque_runge(end),t_vaciado_runge(end))

figure 2
plot(t_vaciado_euler, altura_vaciado_tanque_euler,'*c')
hold on
plot(t_vaciado_runge, altura_vaciado_tanque_runge,'om')
titulo = ['Variación de la altura con el tiempo estimada con paso ' mat2str(dt) ' m'];
title(titulo)
legend('Euler simple', 'Runge-Kutta 4')
xlabel('Tiempo [m]')
ylabel('Altura [m]')


% considero en minutos un paso de 1s: dtv = 1/60

dtv = 1/60;

[t_vaciado_euler, altura_vaciado_tanque_euler] = euler_tanque(ht, dtv, ti, h0);
[t_vaciado_runge, altura_vaciado_tanque_runge] = runge_tanque(ht, dtv, ti, h0);

fprintf('Con dt = %f y por medio del método de Euler simple, la estimación del tiempo de vaciado (altura %f m) es de %f m \n',dt, altura_vaciado_tanque_euler(end),t_vaciado_euler(end))
fprintf('Con dt = %f y por medio del método de Runge-kutta 4, la estimación del tiempo de vaciado (altura %f m) es de %f m \n',dt, altura_vaciado_tanque_runge(end),t_vaciado_runge(end))

figure 3
plot(t_vaciado_euler, altura_vaciado_tanque_euler,'*c')
hold on
plot(t_vaciado_runge, altura_vaciado_tanque_runge,'om')
titulo = ['Variación de la altura con el tiempo estimada con paso ' mat2str(dtv) ' m'];
title(titulo)
legend('Euler simple', 'Runge-Kutta 4')
xlabel('Tiempo [m]')
ylabel('Altura [m]')