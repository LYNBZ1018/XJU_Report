clc; 
f1=[1,2,1]; f2=[1,1,1,1,1];     %构造序列1和序列2
k1=[-1,0,1]; k2=[-2,-1,0,1,2];     
nyb=k1(1)+k2(1); 
nye=k1(length(f1))+k2(length(f2)); %求卷积的起点和终点
ny=[nyb:nye];                          %卷积结果的范围
y=conv(f1,f2); 
stem(ny,y); xlabel('ny'); ylabel('y'); title('离散信号的卷积'); 