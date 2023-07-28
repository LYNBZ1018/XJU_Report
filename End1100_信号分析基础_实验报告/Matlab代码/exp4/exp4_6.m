clf; 
k1=-20; k2=20; 
k=k1:k2; 
f=sin(k*pi/6); 
stem(k,f,'filled'); 
title('正弦序列');
xlabel('时间(k)'); ylabel('幅值f(k)');