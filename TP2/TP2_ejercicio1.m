x = 1; % inicializo la variable x en uno
format long e % formato exponencial
for k = 1:15 
    fprintf('En x=%2.1e,f1(x)=%20.18f,f2(x)=%20.18f \n',x,f1(x),f2(x));
    x = 10*x;  % incremento de la variable x en un factor de 10.
end
disp('Operaciones para analizar el resultado de la evaluacion')
disp( 'de las funciones f1 y f2 en x = 1.0e+15:')

% En particular para x = 1.0e+E15 calculo:       
sx = sqrt(x); % la raiz
sx1 = sqrt(x+1); % la raiz en x + 1  
d = sx1 - sx; % la diferencia de las raices previas
s = sx1 + sx; % la suma de las raices previas

fprintf('sqrt(x+1) = %25.13f, sqrt(x) = %25.13f \n ',sx1,sx);
fprintf(' diff = %25.23f, sum = %25.23f \n',d,s);
