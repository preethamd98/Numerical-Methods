function [I] = trap(a,b,f)
I=((b-a)/2)*(f(a)+f(b));
end

