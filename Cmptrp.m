function [I] = Cmptrp(a,b,n,f)
h=(b-a)/n;
x=a:h:b;
I=0;
for i=2:n
    I=I+(((x(i)-x(i-1))/2)*(f(x(i))+f(x(i-1))));
end
    
end

