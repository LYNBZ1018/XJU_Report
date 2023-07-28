x=0:pi/20:pi/3;
y=sin(x);
p=polyfit(x,y,5)
x1=0:pi/30:pi*2;
y1=sin(x1);
y2=polyval(p,x1);
plot(x1,y1,'b-',x1,y2,'r*')
legend('原曲线','拟合曲线')
axis([0 7 -1.2 4])  