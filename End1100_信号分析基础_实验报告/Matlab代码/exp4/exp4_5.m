clf;
k1=-1; k2=10;
k=k1:k2;
a=-0.6;
A=1;
f=A*a.^k;
stem(k,f,'filled');
title('指数序列');
xlabel('时间(k)'); ylabel('幅值f(k)');