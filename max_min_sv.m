clc
syms x real
f = input('Enter the function f(x): ');
fx = diff(f,x);
c = solve(fx);
cmin = min(double(c));
cmax = max(double(c));
figure (1);
ezplot(f, [cmin-2, cmax+2]);
hold on;
fxx = diff(fx, x);
for i = 1:length(c)
    T1 = subs(fxx, x, c(i));
    T3 = subs(f, x, c(i));
    if(double(T1)==0)
        sprintf('The test fails at x=%d ', double(c(i)))
    else if(double(T1)<0)
        sprintf('The max point x is %d', double(c(i)))
        sprintf('The value of the func is %d', double(T3))
    else
        sprintf('The min point x is %d', double(c(i)))
        sprintf('The value of the func is %d', double(T3))
    end
    end
    plot(double(c(i)), double(T3),'r','MarkerSize',15);
end
