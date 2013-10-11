A = 2;
t0 = 2;
m = 5;
x = -m:0.1:m;

y = zeros(1, length(x));

for i=1:length(x)
    if (x(i) >= t0)
        y(i) = A*(x(i)-t0);
    end
end

stem(x,y);