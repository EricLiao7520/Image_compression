function [x,y] = rplot(S, upper, number, color)

d = ceil(upper/number);
%x = zeros(1,number+1);
%y = zeros(1,number+1);
x = zeros(1, ceil(upper/d));
[m n] = size(x);
for i = 2:n+1
    if(x(i-1) + d <= upper)
x(i) = x(i-1) + d;
    else
        x(i) = upper;
    end
end
for i=2:n+1
    k = x(i);
    T = 0;
    for t=1:k
        T = T+ S(t);
    end
        y(i) = T/sum(S);
end
plot(x,y,color);
