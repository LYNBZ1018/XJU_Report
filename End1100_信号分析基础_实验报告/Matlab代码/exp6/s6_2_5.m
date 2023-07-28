clear
%(1) 求系统函数H(z)
num=[1,0,-1]; 
den=[1 0 -0.81]; 
printsys(fliplr(num),fliplr(den),'1/z')
%(2) 单位序列响应h(k)的数学表达式,并画出波形
subplot(221); 
dimpulse(num,den,40); 
ylabel('脉冲响应'); 
%(3) 单位阶跃响应的波形
subplot(222); 
dstep(num,den,40); 
ylabel('阶跃响应'); 
%(4) 绘出频率响应函数的幅频和相频特性曲线
[h,w]=freqz(num,den,1000,'whole'); 
 subplot(223); 
plot(w/pi,abs(h));
ylabel('幅频'); 
xlabel('＼omega/＼pi'); 
subplot(224); 
plot(w/pi,angle(h));
ylabel('相频'); 
xlabel('＼omega/＼pi');