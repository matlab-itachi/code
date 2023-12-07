clc 
clear all
syms x y t
f = input('enter the vector function: ');
r = input('enter the x(t) and y(t): ');
I = input('enter the limit of integration: ');
a=I(1); b=I(2);

dr = diff(r, t);
F = subs(f, {x,y}, r);
Fdr = sum(F.*dr);
I = int(Fdr,t,a,b);

P(x,y)=f(1); Q(x,y)=f(2);
x=linspace(-2*pi, 2*pi, 10); y=x;
[X,Y] = meshgrid(x,y);
U=P(X,Y); V=Q(X,Y);
quiver(X,Y,U,V)
hold on

t1 = linspace(0,2*pi);
x=subs(r(1), t1); y=subs(r(2), t1);
plot(x,y,'r')
