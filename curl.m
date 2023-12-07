clc 
clear all
syms x y z
f= input('enter the vector function: ');
P(x,y,z)=f(1); Q(x,y,z)=f(2); R(x,y,z)=f(3);
crl = curl(f, [x,y,z]);
C1(x,y,z)=crl(1); C2(x,y,z)=crl(2); C3(x,y,z)=crl(3);
x=linspace(-4, 4, 20); y=x; z =x;
[X,Y,Z]=meshgrid(x,y,z);
U=P(X,Y,Z); V=Q(X,Y,Z); W=R(X,Y,Z);
CR1= C1(X,Y,Z); CR2=C2(X,Y,Z); CR3=C3(X,Y,Z);
figure
subplot(1,2,1);
quiver3(X,Y,Z,U,V,W)
title('3D veiw of vector field')
subplot(1,2,2);
quiver3(X,Y,Z,CR1,CR2,CR3)
title('3D view of curl')
