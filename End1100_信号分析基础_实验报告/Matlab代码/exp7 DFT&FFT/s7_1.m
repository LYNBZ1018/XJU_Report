clear;
xn=[1 1 1 1];
k=0:511; 	%由wk=2πk/512可求得模拟频率f
Xw=dtft(xn,2*pi*k/512);   % 近似模拟信号频谱
subplot(221),plot(2*pi*k/512,abs(Xw));title('DTFT幅频'),xlabel('w')
Xk4=dft(xn,4);
subplot(222),stem(abs(Xk4));title('4点DFT幅频')
Xk8=dft(xn,8);
subplot(223),stem(abs(Xk8));title('8点DFT幅频')
Xk16=dft(xn,16);
subplot(224),stem(0:15,abs(Xk16));title('16点DFT幅频')