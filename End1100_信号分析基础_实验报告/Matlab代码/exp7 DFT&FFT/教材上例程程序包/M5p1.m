function Xk=dft(xn,N)   %ʵ����ɢ����Ҷ�任��DFT)�ļ���
n=[0:N-1];
k=n;
Wn=exp(-j*2*pi/N);
nk=n'*k;
Wnnk=Wn.^nk;
Xk=xn*Wnnk;
