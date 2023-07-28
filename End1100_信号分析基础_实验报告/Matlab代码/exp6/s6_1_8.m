clear;clf; 
num=[1 -0.8]; den=[1 1.5  0.9]; %该系统是什么样的？
N=200; h=impz(num,den,N+1); parsum=0; 
for k=1:N+1; 
            parsum=parsum+abs(h(k)); 
            if abs(h(k))<10^(-6),break,end
end
n=0:N; stem(n,h);          %画出冲激响应曲线
xlabel('时间 n'); ylabel('幅值'); 
disp('Value ='); disp(abs(h(k))); %显示h(k)的绝对值