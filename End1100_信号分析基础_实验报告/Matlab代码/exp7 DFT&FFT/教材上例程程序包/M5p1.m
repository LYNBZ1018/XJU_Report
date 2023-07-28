function Xk=dft(xn,N)   %实现离散傅里叶变换（DFT)的计算
n=[0:N-1];
k=n;
Wn=exp(-j*2*pi/N);
nk=n'*k;
Wnnk=Wn.^nk;
Xk=xn*Wnnk;
