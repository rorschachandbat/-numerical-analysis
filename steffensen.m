function xc=steffensen(f,x0,tol)
wc=1;
xc=x0;
i=1;
x(i)=x0;
while(wc>tol)
    x1=xc;
    y=f(x1);
    z=f(y);
    xc=x1-(y-x1)^2/(z-2*y+x1);
    i=i+1;
    x(i)=xc;
    wc=abs((xc-x1)/x1);
end
end

