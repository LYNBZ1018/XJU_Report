
clear all
n=[0:1:11];
m=[0:1:5];
N1=length(n);
N2=length(m);
xn=n;                      %生成x(n)
hn=ones(1,N2);              %生成h(n)
yln=conv(xn,hn);             %直接用函数conv计算线性卷积
ycN1=circonv(xn,hn,N1);      %用函数circonv计算N1点圆周卷积
ycn=circonv(xn,hn,N1+N2-1);  %用函数circonv计算N1+N2-1点圆周卷积
nyl=[0:1:length(yln)-1];    
ny1=[0:1:length(ycN1)-1];
ny2=[0:1:length(ycn)-1];
subplot(3,1,1);             %画图
stem(nyl,yln,'.');
ylabel('线性卷积');
axis([0,18,0,60]);
subplot(3,1,2);
stem(ny1,ycN1,'.'); 
ylabel('圆周卷积N1')
axis([0,18,0,60]);
subplot(3,1,3);
stem(ny2,ycn,'.');
ylabel('圆周卷积N1+N2-1')
axis([0,18,0,60]);