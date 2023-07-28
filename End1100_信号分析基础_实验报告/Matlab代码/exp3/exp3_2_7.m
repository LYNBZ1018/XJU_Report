r=0.02; t=-5:r:5;
N=200; W=2*pi; k=-N:N; w=k*W/N;
f1=1/2*exp(-2*t).*stepfun(t,0); %f(t)
F=r*f1*exp(-1i*t'*w); %f(t)的傅里叶变换
F1=abs(F); P1=angle(F); subplot(3,1,1); plot(t,f1); grid
xlabel('t'); ylabel('f(t)'); title('f(t)'); subplot(3,1,2)
plot(w,F1); xlabel('w'); grid; ylabel('F(1iw)');
subplot(3,1,3)
plot(w,P1*180/pi); grid;
xlabel('w'); ylabel('相位(度)');