k1=-3; k2=3; k=k1:k2;
f=[1,3,-3,2,3,-4,1];
stem(k,f,'filled');
axis([-4,4,-5,5]);
title('离散时间信号')
xlabel('时间(k)'); ylabel('幅值f(k)');