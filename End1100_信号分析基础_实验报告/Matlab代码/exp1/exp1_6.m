n = 1;
y = 0;
while y < 3
    n = n + 1;
    sum_ = 0;
    for i = 1 : (2 * n - 1)
        sum_ = sum_ + 1 / i;
    end
    
    if sum_ > 3
        n = n - 1;
        break
    else
        y = sum_;
    end
end

fprintf('max n = %d, when y < 3\n', n)
fprintf('y = %f\n', y)