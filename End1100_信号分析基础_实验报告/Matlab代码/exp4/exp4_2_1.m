n = -10:0.2:10;

f1 = 5*exp(-n);
f2 = 3*sin(n);
f3 = heaviside(n+2) - heaviside(n-2);
f4 = sin(3*n);
f5 = (n==1);
f6 = (n==-5);
f7 = cos(3*pi*n);


subplot(4,2,1); stem(n, f1); title('f1 = 5*exp(-n)'); grid on; 
axis([-2,2,-1,16]);

subplot(4,2,2); stem(n, f2); title('f2 = 3*sin(n)'); grid on;
axis([-10,10,-4,4]);

subplot(4,2,3); stem(n, f3); title('f3 = u(n+2)-u(n-2)'); grid on;
axis([-3,3,-1,1.5]);

subplot(4,2,4); stem(n, f4); title('f4 = sin(3n)'); grid on;
axis([-10,10,-2,2]);

subplot(4,2,5); stem(n, f5); title('f5 = \delta(n-1)'); grid on;
axis([-10,10,-1,1.5]);

subplot(4,2,6); stem(n, f6); title('f6 = \delta(n+5)'); grid on;
axis([-10,10,-1,1.5]);

subplot(4,2,7); stem(n, f7); title('f7 = cos(3\pin)'); grid on;
axis([-10,10,-2,2]);