clear all;
fs = 10000;
t = 0:1/fs:0.1;
f0 = 50;
sum = 0;
subplot(211);

for n = 1:2:9 
    harmonic = (4/pi)*(1j/(2*pi*n))*(exp(1j*2*pi*n*f0*t)-exp(-1j*2*pi*n*f0*t)); 
    sum = sum + harmonic; 
    plot(t, abs(harmonic));
    hold on;
end

square_wave = 3/2 - (2/pi)*sum; 
subplot(212);
plot(t, abs(square_wave)); 
