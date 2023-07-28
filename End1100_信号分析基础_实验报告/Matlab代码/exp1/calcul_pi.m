n = [100 1000 1000];
for i = 1 : length(n)
    sum_ = 0;
    for j = 1 : n(i)
        sum_ = sum_ + 1 / j ^ 2;
    end
    pi_ = sqrt(6 * sum_);
    fprintf('n = %d calculate_pi = %f\n', n(i), pi_)
end