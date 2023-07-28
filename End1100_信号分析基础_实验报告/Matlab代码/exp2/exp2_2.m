t = -6:0.01:10;
f1 = (-t+4).*(heaviside(t)-heaviside(t-4));
r_f1 = (t+4).*(heaviside(-t)-heaviside(-t-4));
f3 = r_f1+f1;

subplot(2,1,1);
plot(t,f1)
title('f1(t)'); xlabel('t'); ylabel('f1(t)');

subplot(2,1,2);
plot(t,f3)
title('f3(t)'); xlabel('t'); ylabel('f3(t)');
