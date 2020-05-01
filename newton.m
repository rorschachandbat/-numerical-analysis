function x=newton(x0,tol,N)
con=0;
for i=1:N
    f=eval(subs(fun(x0),{'x1' 'x2'},{x0(1) x0(2)}));
    df=eval(subs(dfun(x0),{'x1' 'x2'},{x0(1) x0(2)}));
    x=x0-f/df;
    for j=1:length(x0)
        il(i,j)=x(j);
    end
    if norm(x-x0)<tol
        con=1;
        break;
    end
    x0=x;
end
%�����ǽ���������д��txt�ĵ��ļ���Ϊiteration.txt
fid=fopen('iteration.txt','w');
fprintf(fid,'iteration');
for j=1:length(x0)
    fprintf(fid,'         x%d',j);
end
for j=1:i
    fprintf(fid,'\n%6d     ',j);
    for k=1:length(x0)
        fprintf(fid,' %10.6f',il(j,k));
    end
end
if con==1
    fprintf(fid,'\n������������');
end
if con==0
    fprintf(fid,'\n��������������ܲ�������');
end
fclose(fid);

    