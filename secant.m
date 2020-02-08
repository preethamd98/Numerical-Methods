f=@(x) x^5-x^3+3;
tol=10^(-16);
x=input('énter initial root');
y= input('enter another');
count=0;
while count<=tol
    z=y-((1/f(y)-f(x)/(y-x))*f(y));
    x=y;
    y=z;
    count=count+1;
    disp(abs(abs(f(y))));
    if (abs((y-x)/y)<tol || abs(f(y))<tol)
        break;
    end
end
  
   