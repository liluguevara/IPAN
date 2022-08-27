%sistema de ecuaciones no lineales
clc; clear all; close all;

f1 = @ (x1, x2) x1 - x2 + 1;
df1_x1 = @(x1,x2) 1.0 + 0.*x1;
df1_x2 = @(x1, x2) -1.0 + 0.*x2;
f2 = @(x1, x2) x1.^2 + x2.^2  -4.0;
df2_x1 = @(x1, x2) 2.0*x1;
df2_x2 = @(x1, x2) 2.0*x2;

x = [-5:0.1:5];
y = [-5:0.1:5];
figure 1
plot3(x,y,f1(x,y))
hold on 
grid on
plot3(x,y,f2(x,y),'-c')
%[xx, yy] = meshgrid (x, y);
%z =f1(x,y);
%contourf(xx,yy,z);
%colormap hsv;
%xlabel ("x");
%ylabel ("y");
%zlabel ("f1(x,y)");
%grid on

x0(1) = 0.5;
x0(2) = 1;
N = 100;
tol = 10E-4;

[raiz,iter,clave] = newton_sistemas(f1,df1_x1,df1_x2,f2,df2_x1,df2_x2,x0,N,tol)

if(clave == 1)
printf("El numero maximo de iteraciones fue alcanzado")

else
printf("La raices buscadas son %f y % f y fueron encontradas en %d iteraciones\n", raiz(1), raiz(2), iter) 

endif
