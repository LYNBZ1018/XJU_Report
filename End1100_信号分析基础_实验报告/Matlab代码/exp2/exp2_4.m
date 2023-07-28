t = -10:0.01:10;
f = (-2/3.*t+2/3).*(heaviside(t+2)-heaviside(t-1));
subplot(2,2,1);
plot(t, f);
axis([-3,3,-1,3]);
title('f(t)'); xlabel('t'); ylabel('f(t)');
grid on;

f1 = (-2/3.*(-t)+2/3).*(heaviside(-t+2)-heaviside(-t-1));
subplot(2,2,2);
plot(t, f1);
axis([-3,3,-1,3]);
title('f(-t)'); xlabel('t'); ylabel('f(-t)');
grid on;

f2 =(-2/3.*(2.*t)+2/3).*(heaviside(2.*t+2)-heaviside(2.*t-1));
subplot(2,2,3);
plot(t, f2);
axis([-3,3,-1,3]);
title('f(2t)'); xlabel('t'); ylabel('f(2t)');
grid on;

f3 = (-2/3.*(2.*t-2)+2/3).*(heaviside(2.*t-2+2)-heaviside(2.*t-2-1));
subplot(2,2,4);
plot(t, f3);
axis([-3,3,-1,3]);
title('f(2t-2)'); xlabel('t'); ylabel('f(2t-2)');
grid on;