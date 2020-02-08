A=rand(3,3);
[L,U] = lu(A);
X_k=[1;1;1]
M=30;
for i=1:M,
    X_k1=(inv(A))*X_k;
    r=norm(X_k1,Inf)/norm(X_k,Inf);
    X_k=X_k1;
end
r