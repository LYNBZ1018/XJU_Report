R=0.02; t=-2:R:2;
f=stepfun(t,-1)-stepfun(t,1);
W1=2*pi*5; %频率宽度
N=500; %采样数为 N
k=0:N;
W=k*W1/N; %W 为频率正半轴的采样点
F=f*exp(-j*t'*W)*R; %求 F(jw)
F=real(F); W=[-fliplr(W),W(2:501)];
F=[fliplr(F),F(2:501)];
subplot(2,1,1); plot(t,f);
xlabel('t'); ylabel('f(t)'); axis([-2,2,-0.5,2]);
title('f(t)=u(t+1)-u(t-1)'); subplot(2,1,2); plot(W,F);
xlabel('w'); ylabel('F(w)'); title('f(t)的傅里叶变换');