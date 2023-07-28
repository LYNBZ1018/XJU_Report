function yc=circonv(x1,x2,N)
if length(x1)>N      %以下两个if语句判断两个序列的长度是否小于N
    error('N must not be less than length of x1');
end
if length(x2)>N
    error('N must not be less than length of x2');
end
x1=[x1,zeros(1,N-length(x1))];    %填充序列x1(n)使其长度为N1+N2-1
                       %（序列x1(n)的长度为N1，序列x2(n)的长度为N2)  
x2=[x2,zeros(1,N-length(x2))];    %填充序列x2(n)使其长度为N1+N2-1
n=[0:1:N-1];
x2=x2(mod(-n,N)+1);            %生成序列x2((-n))N
H=zeros(N,N);
for n=1:1:N
    H(n,:)=cirshiftd(x2,n-1,N);    %该矩阵的k行为x2((k-1-n))N
end
yc=x1*H';                     %计算圆周卷积 
end