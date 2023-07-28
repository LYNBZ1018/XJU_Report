clear;
clf; 
h=[3 2 1 -2 1 0 -4 0 3];    %冲激响应
x=[1 -2 3 -4 3 2 1];      %输入序列
y=conv(h,x); n=0:14; 
subplot(2,1,1); stem(n,y); 
xlabel('时间n'); ylabel('幅值'); 
title('卷积计算输出'); grid; 
x1=[x zeros(1,8)]; 
y1=filter(h,1,x1); subplot(2,1,2); 
stem(n,y1); xlabel('时间 n'); ylabel('幅值'); 
title('滤波计算输出'); grid; 