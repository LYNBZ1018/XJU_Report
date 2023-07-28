clear all;
xn=[1 1 1 1];
y1=conv(xn,xn);     %矩形序列与其自身的线卷积
N=length(xn);
XK=dft(xn,N);       %圆周卷积定理
YK=XK.*XK;
yc4=idft(YK,N);      %用圆周卷积定理实现的4点圆周卷积
xn1=[1 1 1 1 0 0 0];
N1=length(xn1);
XK1=dft(xn1,N1); 
YK1=XK1.*XK1;
yc7=idft(YK1,N1);   %用圆周卷积定理实现的7点圆周卷积 
subplot(311),stem(y1),title('线性卷积结果');
subplot(312),stem(yc4),title('4点圆周卷积结果');
subplot(313),stem(yc7),title('7点圆周卷积结果');
