clc
clear all
syms x y

f(x,y) = input('Enter the function f(x,y): ');
p=diff(f,x);  q = diff(f,y);
[ax,ay]=solve(p,q);
ax=double(ax);  ay=double(ay);
r=diff(p,x);  s=diff(p,y);  t=diff(q,y);
D = r*t - s^2;

figure
fsurf(f);
legstr = {'Function plot'};

for i = 1:size(ax)
T1 = D(ax(i), ay(i));
T2 = r(ax(i), ay(i));
T3 = f(ax(i), ay(i));
if(double(T1)==0)
sprintf('At point (%f, %f) further investigation is required',ax(i), ay(i));
legstr = [legstr, {'Case of Further investigation'}];
mkr = 'ko';
else if(double(T1)<0)
sprintf('The point (%f, %f) is a saddle point', ax(i), ay(i));
legstr = [legstr, {'Saddle point'}];
mkr = 'bv';
else
if(double(T2)<0)
sprintf('The maximum value is at (%f, %f) = %f', ax(i), ay(i), T3);
legstr = [legstr, {'Maximum value'}];
mkr = 'g+';
else
sprintf('The minimum value is at (%f, %f) = %f', ax(i), ay(i), T3);
legstr = [legstr, {'Minimum value'}];
mkr = 'r*';
end
end
hold on
plot3(ax(i), ay(i), T3, mkr, 'Linewidth', 4)
end
legend(legstr, 'Location', 'Best');
