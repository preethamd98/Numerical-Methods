clear;
a=[6 -2 2 4;12 -8 6 10;3 -13 9 3;-6 4 1 -18];
x=zeros(4,1);
b=[12 34 27 -38];
u=[6 -2 2 4; 0 -4 2 2; 0 0 2 -5; 0 0 0 -3];
B=[12; 10; -9; -3];
x(4)=B(4)/u(4,4);
for i=3:-1:1
    s=0;
    for k=i+1:4
       s=s+(u(i,k))*x(k);
    end
    x(i)=(1/u(i,i))*(B(i)-s);
end
disp(x);
for k=1:n-1
    for i=k+1:n
        m=a(i,k)/a(k,k);
        for j=k+1:n
            a(i,j)=a(i,j)-m*a(k,j);
        end
        b(i)=b(i)-m*b(k);
        a(i,k)=0;
    end
end
disp(a)