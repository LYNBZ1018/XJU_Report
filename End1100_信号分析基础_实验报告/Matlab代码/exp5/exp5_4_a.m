% 采样频率为 600 Hz
T = 1 / 600;
n = 0:50;
X = A * exp(-a*n*T) .* sin(w*n*T);
N = length(X);
f = (0:N-1) / N / T;
Y = abs(fft(X)) / N;

figure;
subplot(2,1,1);
stem(n*T, X, 'marker', 'none');
xlabel('Time (s)');
ylabel('Amplitude');
title('Sampled Signal (fs = 600 Hz)');

subplot(2,1,2);
plot(f, Y, 'linewidth', 2);
xlim([0, 1000]);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Frequency Spectrum (fs = 600 Hz)');

% 采样频率为 400 Hz
T = 1 / 400;
n = 0:50;
X = A * exp(-a*n*T) .* sin(w*n*T);
N = length(X);
f = (0:N-1) / N / T;
Y = abs(fft(X)) / N;

figure;
subplot(2,1,1);
stem(n*T, X, 'marker', 'none');
xlabel('Time (s)');
ylabel('Amplitude');
title('Sampled Signal (fs = 400 Hz)');

subplot(2,1,2);
plot(f, Y, 'linewidth', 2);
xlim([0, 1000]);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Frequency Spectrum (fs = 400 Hz)');
