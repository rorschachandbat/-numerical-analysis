function [xc,xd]=fpi(g,x0,tol)
k=1000;
x(1)=x0;
x(2)=g(x0);
i=2;
while abs((x(i)-x(i-1))/x(i))>tol
    x(i+1)=g(x(i));
    i=i+1;
    if i>1000
        break
    end
end
xc=x(i);
xd=x;