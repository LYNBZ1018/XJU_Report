clf;
k1=-1; k2=20;
k0=0;
n=[k1:k2];
if k0>=k2
    x=zeros(1, length(n));
elseif (k0<k2)&(k0>k1)
    x=[zeros(1, k0-k1), [0:k2-k0]];
else
    x=(k1-k0)+[0:k2-k1];
end
stem(n,x);
title('单位斜坡序列');
xlabel('时间(k)'); ylabel('幅值f(k)');