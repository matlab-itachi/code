clc 
clear all
syms x y
f = input('enter the function: ');
div(x, y)=divergence(f, [x,y])
P(x,y)=f(1); Q(x,y)=f(2);
x = linspace(-4, 4, 20); y=x;
[X,Y]=meshgrid(x,y);
U=P(X,Y); V=Q(X,Y);
figure
pcolor(X, Y, div(X,Y))
shading interp
hold on
quiver(X, Y, U, V, 1)
axis on
title('Vector field of F(x,y)')
