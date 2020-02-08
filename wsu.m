function[s]=wsu(A,B,c)
s=0;
    for i=1:length(A),
       s=s+B(i)*exp(c*A(i));
end
end
