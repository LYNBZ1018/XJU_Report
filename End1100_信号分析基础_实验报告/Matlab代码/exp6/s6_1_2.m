clear;
y0=0;                           %初值y(0)=0
y(1)=1; y(2)=5/6*y(1)-1/6*y0+cos(2*pi/4)/6; 
for k=3:20
    y(k)=5/6*y(k-1)-1/6*y(k-2)+cos(k*pi/4)/6; 
end
yy=[y0  y(1:20)];               %取y(k)从y(0)到y(20)
k=1:21; 
stem(k-1,yy); 
grid on ; 
 xlabel('k'); ylabel('y(k)'); title('系统全响应'); 