start =input("enter a value to start : ");
format long;
f=@(x) (x*sin(x)-1);
i=1;
while (f(start)*f(start+i))>0
    f(start)*f(start+i);
    start=start+i;
end
disp("root lies between :")
disp(start)
disp(start+1);
a =start;
b=start+1;
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
    
        a=b;
   
        b=y;
    funcA=f(a);
    funcB=f(b);
    yp=y;
end
disp("root:" )
disp(y)
disp("no of iterations : ")
disp(count)