R=0.02; t=-2:R:2; f=stepfun(t,-1)-stepfun(t,1);
f1=f.*exp(-1i*10*t); f2=f.*exp(1i*10*t); W1=2*pi*5;
N=500; k=-N:N; W=k*W1/N;
F1=f1*exp(-1i*t'*W)*R; %f1(t)傅里叶变换
F2=f2*exp(-1i*t'*W)*R; %f2(t)傅里叶变换
F1=real(F1); F2=real(F2); subplot(2,1,1); plot(W,F1);
xlabel('w'); ylabel('F1(1iw)'); title('频谱 F1(1iw)');
subplot(2,1,2); plot(W,F2);
xlabel('w'); ylabel('F2(1iw)'); title('频谱 F2(1iw)');