k0=0; %单位阶跃开始出现的位置
k1=-3; k2=6; k=k1:k0-1;
n=length(k);
k3=-k0:k2;
n3=length(k3);
u=zeros(1,n);
u3=ones(1,n3);
stem(k,u,'filled');
hold on;
stem (k3,u3,'filled');
hold off;
axis([k1,k2,-0.2,1.5]); 
title('单位阶跃序列');
xlabel('时间(k)'); ylabel('幅值f(k)');
