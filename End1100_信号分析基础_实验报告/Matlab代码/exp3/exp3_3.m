clear all;
fs = 10000;
t = 0:1/fs:0.1;
f0 = 50;
sum = 0;
subplot(211);

for n = 1:2:9 %增加谐波次数
    harmonic = (4/pi)*(1/n)*sin(2*pi*n*f0*t); %计算当前谐波的正弦信号
    sum = sum + harmonic; %将当前谐波信号加到总信号中
    plot(t, harmonic); %画出当前谐波信号
    hold on;
end

square_wave = 3/2 - (2/pi)*sum; %计算方波信号
subplot(212);
plot(t, square_wave); %画出方波信号
