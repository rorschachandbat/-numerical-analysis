function f=fun(x)
syms x1 x2;
f1=x1-sin(x1+x2)-1.2;
f2=x2+cos(x1+x2)-0.5;
f=[f1 f2];
end
