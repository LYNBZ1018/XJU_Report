t = -6:0.01:10;
f1 = (-t+4).*(heaviside(t)-heaviside(t-4));
f2 = sin(2*pi*t);
f4 = f1.*f2;

subplot(2,1,1);
plot(t,f1)
title('f1(t)'); xlabel('t'); ylabel('f1(t)');

subplot(2,1,2);
plot(t,f4)
title('f4(t)'); xlabel('t'); ylabel('f4(t)');