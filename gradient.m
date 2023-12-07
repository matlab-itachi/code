clc 
clear all
syms x y 
f = input('Enter the function: ');
F = gradient(f, [x,y])
P(x,y) = F(1); Q(x,y) = F(2);
x = linspace(-2, 2, 10); y=x;
[X, Y]=meshgrid(x, y);
U = P(X, Y); V=Q(X,Y);
quiver(X, Y, U, V, 1);
axis on
xlabel('x')
ylabel('y')
hold on
fcontour(f, [-2, 2])
