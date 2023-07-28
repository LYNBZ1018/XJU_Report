clc;

% 从文件中读取心电信号数据
[Time, M, Fs, siginfo] = rdmat('117m');  % Time: 时间向量 M: 信号矩阵 Fs: 采样频率 siginfo: 附加信息

% 低通滤波器参数设置
Fs = 1500;          % 采样频率 1500Hz
passf = 80;         % 通带截止频率 80Hz
resistf = 100;      % 阻带截止频率 100Hz
rpass = 1.4;        % 通带衰减 1.4dB
rresist = 1.6;      % 阻带衰减 1.6dB

% 将频率转换为弧度
wpass = 2 * pi * passf;
wresist = 2 * pi * resistf;

% 设计巴特沃斯低通滤波器
[n, wn] = buttord(wpass, wresist, rpass, rresist, 's');  % 计算滤波器阶数n 和 归一化截止频率wn
[z, P, k] = buttap(n);                                   % 返回极点z 零点p 增益k
[bp, ap] = zp2tf(z, P, k);                               % 将极点-零点-增益形式转换为传递函数形式（分子系数bp，分母系数ap）
[bs,as] = lp2lp(bp, ap, wpass);                          % 将模拟滤波器转换为数字滤波器，并进行归一化

[hs, wresist] = freqs(bs, as);             % 模拟滤波器的幅频响应
[bz, az] = bilinear(bs, as, Fs);           % 对模拟滤波器进行双线性变换，转换为数字滤波器，得到新的分子系数bz和分母系数az
[h1, w1] = freqz(bz, az);                  % 数字滤波器的幅频响应
m = filter(bz, az, M( : , 1));             % 对M矩阵的第一列进行滤波处理，得到滤波后的信号m

% 绘制巴特沃斯低通滤波器的幅频曲线
figure
freqz(bz, az);  % 分子系数bz和分母系数az
title('滤波器幅频曲线');

% 绘制原始心电信号和低通滤波后的时域图形
figure
subplot(2, 1, 1);
plot(Time, M(:, 1));
xlabel('t(s)');
ylabel('mv');
title('原始心电信号');
grid;

subplot(2, 1, 2);
plot(Time, m);
xlabel('t(s)');
ylabel('mv');
title('去除肌电干扰后的时域图形');
grid;

% 频谱分析
N = 512;                  % FFT点数
n = 0:N-1;                % 时域采样点序列
mf = fft(M(:, 1), N);     % 进行频谱变换（傅里叶变换）
mag = abs(mf);
f = (0:length(mf)-1) * Fs / length(mf);  % 进行频率变换

% 绘制心电信号频谱图
figure
subplot(2, 1, 1)
plot(f, mag);
axis([0, 1500, 1, 50]);
grid;
xlabel('频率(Hz)');
ylabel('幅值');
title('原始心电信号频谱图');

mfa = fft(m, N);           % 进行频谱变换（傅里叶变换）
maga = abs(mfa);
fa = (0:length(mfa)-1) * Fs / length(mfa);  % 进行频率变换
subplot(2, 1, 2)
plot(fa, maga);
axis([0, 1500, 1, 50]);
grid;
xlabel('频率(Hz)');
ylabel('幅值');
title('去除肌电干扰后心电信号频谱图');
