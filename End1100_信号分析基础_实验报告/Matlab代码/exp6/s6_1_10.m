% 定义序列 f1(k)
k_range = -1:4;
f1 = 2 * k_range;

% 定义序列 f2(k)
k_range_f2 = 1:5;
f2 = 2 .^ k_range_f2;

% 计算卷积
convolution = conv(f1, f2);

% 绘制波形
figure;
subplot(3, 1, 1);
stem(k_range, f1, 'filled');
title('f1(k)');
xlabel('k');

subplot(3, 1, 2);
stem(k_range_f2, f2, 'filled');
title('f2(k)');
xlabel('k');;

subplot(3, 1, 3);
stem((k_range(1) + k_range_f2(1)):(k_range(end) + k_range_f2(end)), convolution, 'filled');
title('Convolution of f1(k) and f2(k)');
xlabel('k');
