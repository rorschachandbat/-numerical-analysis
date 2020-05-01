function [xc,xd]=sPsecant(f,x0,x1,tol,k)
x(1)=x0;
x(2)=x1;
i=2;
while abs((x(i)-x(1))/x(i))>tol
    x(i+1)=x(i)-f(x(i))*(x(i)-x(1))/(f(x(i))-f(x(1)));
    i=i+1;
    if i>k
        break;
    end
end
xc=x(i);
xd=x;
end
