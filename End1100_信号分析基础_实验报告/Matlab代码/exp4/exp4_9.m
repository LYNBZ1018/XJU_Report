n=0:100;
a=pi/2/100;
b=0; arg=a*n.*n + b*n;
x=cos(arg);
clf; stem(n,x);
axis([0,100,-1.5,1.5]);
grid; axis; title('扫频正弦序列');
xlabel('k'); ylabel('f(k)');