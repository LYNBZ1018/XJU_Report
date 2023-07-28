function xn=idft(Xk,N)   %实现离散傅里叶逆变换（IDFT)的计算
n=[0:N-1];
k=[0:N-1];
Wn=exp(-j*2*pi/N);
nk=n'*k;
Wnnk=Wn.^(-nk);
xn=(Xk*Wnnk)/N;  
end