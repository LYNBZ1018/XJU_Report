% 设置采样频率为 16kHz
fs = 16000;

% 录制 10 秒的声音
recObj = audiorecorder(fs, 16, 1);
disp('-----开始录音-----');
recordblocking(recObj, 10);
disp('-----录音结束-----');
audioSignal = getaudiodata(recObj);

% 将声音转换为离散时间信号
n = length(audioSignal);
t = (0:n-1)/fs;

% 将信号添加随机噪声
audioSignalNoisy1 = audioSignal + 0.01*randn(size(audioSignal));
audioSignalNoisy2 = audioSignal + 0.05*randn(size(audioSignal));
audioSignalNoisy3 = audioSignal + 0.1*randn(size(audioSignal));

% 播放添加噪声的声音
disp('-----播放 添加 0.01 强度噪声-----');
sound(audioSignalNoisy1, fs);
pause(10);
disp('-----已播完 添加 0.01 强度噪声-----');

disp('-----播放 添加 0.05 强度噪声-----');
sound(audioSignalNoisy2, fs);
pause(10);
disp('-----已播完 添加 0.05 强度噪声-----');

disp('-----播放 添加 0.1 强度噪声-----');
sound(audioSignalNoisy3, fs);
pause(10);
disp('-----已播完 添加 0.1 强度噪声-----');

% 绘制信号和添加噪声后的信号的时域波形图
subplot(2,2,1);
plot(t, audioSignal);
title('原始信号');
subplot(2,2,2);
plot(t, audioSignalNoisy1);
title('添加 0.01 强度噪声后的信号');
subplot(2,2,3);
plot(t, audioSignalNoisy2);
title('添加 0.05 强度噪声后的信号');
subplot(2,2,4);
plot(t, audioSignalNoisy3);
title('添加 0.1 强度噪声后的信号');
