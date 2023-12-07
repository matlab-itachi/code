clc
clear all
syms x y z

F = input("Enter the vector field in the form i, j, k: ");
P = inline(vectorize(F(1)), 'x', 'x');
Q = inline(vectorize(F(2), 'x', 'y');
x = linspace(-1, 1, 10);
y=x;
[X, Y] = meshgrid(x, y);
U = P(X, Y);
V = Q(X, Y);
quiver(X, Y, U, V, 1)
axis on 
xlabel('x')
ylabel('y')
