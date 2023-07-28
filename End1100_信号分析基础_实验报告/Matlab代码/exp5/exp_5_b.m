% 定义参数
A = 1;
a = -2;
w0 = 600 * pi;
T = 1/2000; % 采样周期
t = 0:T:50*T; % 时间序列
n = 0:50; % 取样点序列

% 生成信号
x = A * exp(-a*t) .* sin(w0*t) .* (t>=0);
x_sampled = A * exp(-a*n*T) .* sin(w0*n*T);

% 绘制时域波形
figure;
plot(t, x);
hold on;
stem(n*T, x_sampled, 'filled');
title('时域波形');
legend('原信号', '采样信号');

% 计算幅度谱
f = -1000:0.1:1000; % 频率序列
X = A./sqrt((a+j*(w0-f)).^2)/2; % 信号的频谱

% 绘制幅频特性曲线
figure;
plot(f, abs(X));
title('幅频特性');
xlabel('频率 (Hz)');
ylabel('幅度');
grid on;

% 改变采样频率为600Hz
T = 1/600; % 新采样周期
n = 0:300; % 新的取样点序列
x_sampled = A * exp(-a*n*T) .* sin(w0*n*T);

% 绘制时域波形
figure;
plot(t, x);
hold on;
stem(n*T, x_sampled, 'filled');
title('时域波形');
legend('原信号', '采样信号');

% 计算幅度谱
f = -1000:0.1:1000; % 频率序列
X = A./sqrt((a+j*(w0-f)).^2)/2; % 信号的频谱
X_sampled = fftshift(fft(x_sampled, length(f))) / length(f) * 2; % 采样信号的频谱

% 绘制幅频特性曲线
figure;
plot(f, abs(X));
hold on;
stem(f, abs(X_sampled), 'filled');
title('幅频特性');
xlabel('频率 (Hz)');
ylabel('幅度');
legend('原信号', '采样信号');
grid on;

% 减小采样频率为400Hz
T = 1/400; % 新采样周期
n = 0:200; % 新的取样点序列
x_sampled = A * exp(-a*n*T) .* sin(w0*n*T);

% 绘制时域波形
figure;
plot(t, x);
hold on;
stem(n*T, x_sampled, 'filled');
title('时域波形');
legend('原信号', '采样信号');

% 计算幅度谱
f = -1000:0.1:1000; % 频率序列
X = A./sqrt((a+j*(w0-f)).^2)/2; % 信号的频谱
X_sampled = fftshift(fft(x_sampled, length(f)))
