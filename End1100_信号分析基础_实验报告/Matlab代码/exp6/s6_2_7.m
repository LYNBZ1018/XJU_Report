% 求解系统函数 H(z)
syms z;
y = (3*(1/2)^z + 2*(1/3)^z) / 1;
Hz = simplify(y)

% 求解单位脉冲响应 h(k)
syms k;
hz1 = (9/2)*(1/2)^k;
hz2 = -(6/5)*(1/3)^k;
h = hz1 + hz2

% 绘制零极点图
subplot(2,2,1);
zplane([3, 2], [1]);

% 绘制频率响应的幅频相特性
[hf, f] = freqz([3, 2], [1]);
mag = abs(hf);
phase = angle(hf);
subplot(2, 2, 2);
plot(f/pi, mag);
title('Magnitude Response');
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Magnitude (dB)');
grid on;
subplot(2, 2, 3);
plot(f/pi, phase/pi);
title('Phase Response');
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Phase (\times\pi rad)');
grid on;
