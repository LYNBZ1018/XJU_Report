k1=-3; k2=6; k=k1:k2; 
n=3; 
%单位脉冲出现的位置 
f=[(k-n)==0]; 
stem(k,f,'filled'); title('单位脉冲序列') 
xlabel('时间(k)'); ylabel('幅值f(k)');