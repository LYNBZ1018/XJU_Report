% 定义三角波的幅值和周期
um = 1;
T = 2;

% 构造三角波信号
t = linspace(0, 10*T, 10000); % 时间范围内取样10000个点
tri_wave = um * sawtooth(2 * pi * t / T, 0.5);

% 绘制三角波信号图形
figure;
plot(t, tri_wave, 'LineWidth', 2);
xlabel('时间 t');
ylabel('幅值 u(t)');
title('三角波信号');
grid on;

% 定义三角波的傅里叶级数展开式
n = 100; % 级数展开项数
w0 = 2 * pi / T; % 角频率

% 构造级数展开式
a0 = 0;
ak = zeros(1, n);
bk = zeros(1, n);
for k = 1:n
    ak(k) = 0;
    bk(k) = (-1)^(k+1) * 8 * um / ((k*2-1)^2 * pi^2);
end

% 构造傅里叶级数信号
tri_fourier = a0 * ones(1, length(t));
for k = 1:n
    tri_fourier = tri_fourier + ak(k) * cos(k*w0*t) + bk(k) * sin(k*w0*t);
end

% 绘制傅里叶级数信号图形
figure;
plot(t, tri_fourier, 'LineWidth', 2);
xlabel('时间 t');
ylabel('幅值 u(t)');
title('三角波傅里叶级数展开');
grid on;

% 绘制三角波信号和傅里叶级数信号的图形
figure;
plot(t, tri_wave, 'LineWidth', 2);
hold on;
plot(t, tri_fourier, 'LineWidth', 2);
xlabel('时间 t');
ylabel('幅值 u(t)');
title('三角波信号和傅里叶级数展开');
legend('三角波信号', '级数展开');
grid on;
