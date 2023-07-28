function y=cirshiftd(x,m,N)  %直接实现序列x的圆周移位
if length (x)>N
    	error('the length of x must be less than N');
end
x=[x,zeros(1,N-length(x))];
n=[0:1:N-1];
y=x(mod(n-m,N)+1);
end