clf;
R=51;
d=0.8*(rand(1,R)-0.5); %随机噪声
m=0:R-1;
s=2*m.*(0.9.^m); %正常信号
x=s+d; %加噪声后的信号
subplot(2,1,1);
plot(m,d,'r-',m,s,'g--',m,x,'b-.');
title('信号平滑')
xlabel('n'); ylabel('f(n)');
legend('d[n] ','s[n] ','x[n] ');
x1=[0 0 x]; x2=[0 x 0]; x3=[x 0 0];
y=(x1+x2+x3)/3;
subplot(2,1,2);
plot(m,y(2:R+1),'r-',m,s,'g--');
legend( 'y[n] ','s[n] ');
xlabel('n'); ylabel('f(n)');