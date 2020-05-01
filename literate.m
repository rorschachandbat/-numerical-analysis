function xc=literate(g,h,x0,y0,tol)
x(1)=x0;
x(2)=g(x0,y0);
y(1)=y0;
y(2)=h(x0,y0);
i=2;
while abs((x(i)-x(i-1))/x(i))>tol|abs((y(i)-y(i-1))/y(i))>tol
    x(i+1)=g(x(i),y(i));
    y(i+1)=h(x(i),y(i));
    i=i+1;
end
xc=[x(i);y(i)];
