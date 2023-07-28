clf; %计算连续周期信号的傅里叶级数
N=8; n1=- N:-1; %计算 N 为负数时的傅里叶级数
c1=-4*1i*sin(n1*pi/2)/pi^2./n1.^2;
c0=0; %计算 N 为零时的傅里叶级数
n2=1:N; %计算为 N 正数时的傅里叶级数
c2=-4*1i*sin(n2*pi/2)/pi^2./n2.^2; cn=[c1 c0 c2];
n=-N:N;
subplot(2,1,1); stem(n,abs(cn)); ylabel('Am of CN');
subplot(2,1,2);
stem(n,angle(cn)); ylabel(' phase of CN '); xlabel('＼omega/＼omega0');