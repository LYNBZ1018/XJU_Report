clear;
Nmax=16;
Fft_time=zeros(1,Nmax);
for  n=1:1:Nmax;
x=rand(1:n);
t=clock;
fft(x);
fft_time(n)=etime(clock,t);
end 
n=[1:1:Nmax];
plot(n,Fft_time,'r.');
xlabel('N');ylabel('时间(单位：秒)');title('FFT 执行时间') 