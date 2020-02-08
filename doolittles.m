
A=[4 12 -16;12 37 -43;-16 -43 98];
[m,n]=size(A);
U=zeros(m);
L=zeros(m);
for j=1:m
    L(j,j)=1;
end
for j=1:m
    U(1,j)=A(1,j);
end
for i=2:m
    for j=1:m
        for k=1:i-1
            s1=0;
            if k==1
                s1=0;
            else
            for p=1:k-1
                s1=s1+L(i,p)*U(p,k);
            end
            end
            L(i,k)=(A(i,k)-s1)/U(k,k);
           end
         for k=i:m
             s2=0;
           for p=1:i-1
               s2=s2+L(i,p)*U(p,k);
           end
           U(i,k)=A(i,k)-s2;
         end
    end
end

A

L

U

for i=1:2,
    for j=i+1:3,
    fact=-(a(j,i)/a(i,i));
    for k=i+1:3,
    a(j,k)=a(j,k)-(fact*a(i,k));
    end
end
end
   disp(a);
                  
  
