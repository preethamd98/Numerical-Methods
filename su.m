function[s]=su(A,c)
s=0;
for i=1:length(A),
s=s+(exp(c*A(i)));
end
end



