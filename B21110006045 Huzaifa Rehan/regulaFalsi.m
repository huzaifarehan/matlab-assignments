a =0;
b=2;
f=@(x) (x*sin(x)-1);
funcA=f(a);
funcB=f(b);
y=0;
n=0;
yp=1;
count=0;
while n~=1
    y=((a*funcB)-(b*funcA))/(funcB-funcA);
    count=count+1;
    if y==yp
        n=1;
        break
    end
    if f(y)<0
        a=y;
    elseif f(y)>0
        b=y;
    end
    funcA=f(a);
    funcB=f(b);
    yp=y;
end
disp("root:" )
disp(y)
disp("no of iterations : ")
disp(count)


    
