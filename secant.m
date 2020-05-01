function [xc,xd]=secant(f,x0,x1,tol)
x(1)=x0;
x(2)=x1;
i=2;
while abs((x(i)-x(i-1))/x(i))>tol
    x(i+1)=x(i)-f(x(i))*(x(i)-x(i-1))/(f(x(i))-f(x(i-1)));
    i=i+1;
end
xc=x(i);
xd=x;
end
