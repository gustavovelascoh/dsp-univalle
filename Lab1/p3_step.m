A = 1;
t0 = 1;
m = 5;
x = -m:0.1:m;

y = zeros(1, length(x));

for i=1:length(x)
    if (x(i) >= t0)
        y(i) = A;
    end
end

stem(x,y);