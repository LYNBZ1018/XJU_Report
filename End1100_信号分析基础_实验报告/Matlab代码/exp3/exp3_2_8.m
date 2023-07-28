r=0.02; t=-5:r:5; N=200; W=2*pi; k=-N:N; w=k*W/N;
f1=1/2*exp(-2*(t-1)).*stepfun(t,1); %f(t)
F=r*f1*exp(-1i*t'*w); %f(t)的傅里叶变换
F1=abs(F); P1=angle(F); subplot(3,1,1); plot(t,f1); grid on
xlabel('t'); ylabel('f(t)');
title('f(t-1)');
subplot(3,1,2);
plot(w,F1); xlabel('w'); grid on; ylabel('F(1iw)的模');
subplot(3,1,3); plot(w,P1*180/pi);
grid; xlabel('w'); ylabel('相位(度)');