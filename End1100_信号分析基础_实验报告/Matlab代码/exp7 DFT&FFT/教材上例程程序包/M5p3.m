%【例5-6】用dft函数和idft函数仿真例5-5：求4点矩形脉冲R4(N)和自己的线卷积与圆卷积。
%在R4(N)后面添加3个零点，将它扩展成长度为7的序列后再计算它和自己的圆卷积。 
close all;
xn=[1 1 1 1];
y1=conv(xn,xn)  %4点矩形序列与其自身的线卷积
N=length(xn);
XK=dft(xn,N)    %圆周卷积定理
YK=XK.*XK
yc=idft(YK,N)   %4点圆周卷积
xn1=[1 1 1 1 0 0 0];
N1=length(xn1);
XK1=dft(xn1,N1)
YK1=XK1.*XK1
yc1=idft(YK1,N1) %7点圆周卷积

