function [I] = simp(a,b,f)
h=(b-a)/2;
I=(h/3)*(f(a)+(4*f((b+a)/2))+f(b));
end

