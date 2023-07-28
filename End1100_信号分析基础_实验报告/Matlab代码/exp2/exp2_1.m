clear;
%sqrt(a*x)
x = 0:0.01:2;
a = 10;
f1 = sqrt(a.*x);
subplot(3,4,1);
plot(x,f1)
title('sqrt(a*x)');

%(1-2*abs(x))/a
x = -2:0.01:2;
a = 2;
f2 = (1 - 2.*abs(x))./a;
subplot(3,4,2);
plot(x,f2)
title('(1-2*abs(x))/a');

%sin(x)/x
x = -pi:0.01:2*pi;
f3 = sin(x)./x;
subplot(3,4,3);
plot(x,f3);
title('sin(x)/x');

%5*exp(-x)
x = -1:0.01:1;
f4 = 5*exp(-x);
subplot(3,4,4);
plot(x,f4)
title('5*exp(-x)');

%3*sinx
x = 0:0.01:2*pi;
f5 = 3*sin(x);
subplot(3,4,5);
plot(x,f5)
title('3*sinx');

%u(t-3)
t = -1:0.01:7;
t0 = 3;
u1 = stepfun(t,t0);
subplot(3,4,6);
plot(t,u1)
title('u(t-3)');

%u(t+5)
t = -7:0.01:-3;
t0 = -5;
u2 = stepfun(t,t0);
subplot(3,4,7);
plot(t, u2)
title('u(t+5)');

%sint
t = 0:0.01:2*pi;
f8 = sin(t);
subplot(3,4,8);
plot(t, f8)
title('sint');

%sin2t
t = 0:0.01:2*pi;
f9 = sin(2.*t);
subplot(3,4,9);
plot(t, f9)
title('sin3t');

%δ(t-1)
t = 0:0.01:2;
t0 = 1;
y = (t==t0);
subplot(3,4,10);
plot(t, y)
title('冲激信号(t-1)');

%δ(t+5)
t = -6:0.01:-4;
t0 = -5;
y = (t==t0);
subplot(3,4,11);
plot(t, y);
title('冲激信号(t+5)');

%cos3t+sin2t
t = 0:0.01:2*pi;
f12 = cos(3.*t) + sin(2.*t);
subplot(3,4,12);
plot(t, f12)
title('cos3t+sin2t');

