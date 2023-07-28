t = -10:0.01:10;
f1 = (t==0);
f2 = heaviside(t);
f3 = heaviside(t) - heaviside(t-4);

c1 = conv(f1,f2);
c2 = conv(f2,f1);
subplot(2,2,1);
plot(c1);
title('f1*f2');
subplot(2,2,3);
plot(c2);
title('f2*f1');

c3 = conv(f1,(f2+f3));
c4 = conv(f1,f3);
c5 = c1+c4;
subplot(2,2,2);
plot(c3);
title('f1*[f2+f3]');
subplot(2,2,4);
plot(c5);
title('f1*f2+f1*f3');