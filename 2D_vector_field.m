clc 
clear all
syms x y
f = input('enter the vector field: ');
P(x,y)=f(1); Q(x,y)=f(2);
x=linspace(-4, 4, 20); y=x;
[X,Y]=meshgrid(x,y);
U=P(X,Y); V=Q(X,Y);
quiver(X,Y,U,V)
