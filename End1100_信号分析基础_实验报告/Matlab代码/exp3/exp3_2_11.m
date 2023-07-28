t = -5:0.01:5;

f1 = exp(-3*t).*heaviside(t); % 定义三个信号
f2 = exp(-3*(t-4)).*heaviside(t-4);
f3 = exp(-3*t).*exp(-1i*4*t);

F1 = fft(f1);
F2 = fft(f2);
F3 = fft(f3);

A1 = abs(F1);
A2 = abs(F2);
A3 = abs(F3);

subplot(3,1,1);
plot(t,A1);
title('频谱图 1');
xlabel('频率');
ylabel('振幅');

subplot(3,1,2);
plot(t,A2);
title('频谱图 2');
xlabel('频率');
ylabel('振幅');

subplot(3,1,3);
plot(t,A3);
title('频谱图 3');
xlabel('频率');
ylabel('振幅');
