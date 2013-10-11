A = (0.25+0.9j);
t0 = 0;
m = 5;
x = -m:0.1:m;

y = zeros(1, length(x));

for i=1:length(x)
    if (x(i) >= (0 + t0))
        y(i) = A.^(x(i)-t0);
    end
end

subplot(2,1,1),stem(x,abs(y));
subplot(2,1,2),stem(x,angle(y));