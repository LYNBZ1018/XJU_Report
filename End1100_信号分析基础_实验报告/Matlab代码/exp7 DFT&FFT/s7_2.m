clear;
N=16; 
n=0:1:N-1; %时域采样 
xn=sin(n*pi/8)+sin(n*pi/4); %以下DFT求解也可以调用自编函数dft实现
k=0:1:N-1; %频域采样 
WN=exp(-j*2*pi/N); 
nk=n'*k; 
WNnk=WN.^nk;41 
Xk=xn*WNnk; 
subplot(2,1,1) 
stem(n,xn); title('信号xn')
subplot(2,1,2) 
stem(k,abs(Xk)); title('16点DFT')