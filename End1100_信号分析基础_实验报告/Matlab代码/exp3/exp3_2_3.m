% 定义函数 f(t)
f = @(t) 1/2*exp(-t).*heaviside(t) + 1/2*exp(t).*heaviside(-t);

% 绘制函数的图像
t = linspace(-5, 5, 1000);
plot(t, f(t), 'LineWidth', 2);
xlabel('t');
ylabel('f(t)');
title('函数 f(t)');
