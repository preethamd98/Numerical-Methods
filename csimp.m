function [I] = csimp(a,b,n,f)
h=(b-a)/n;

sum1=0;
sum2=0;
for i=4:2:n-2
    sum1=sum1+f(a+((i-1)*h));
    end
for j=3:2:n-1
    sum2=sum2+f(a+(j*h));
    end
I=(h/3)*(f(a)+(4*sum1)+(2*sum2)+f(b));
sum1
sum2
n
end