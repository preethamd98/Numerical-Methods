x0=input('intial guess');
f=@(x)x^2-5;
fp=@(x)(2*x);
k=@(x)-2/(fp(x));
tol=input('enter the tol');
k=k(x0)+tol
for i=1:500,
    x1=x0+(k*f(x0));
    x0=x1;
end
display(x1)