syms t w
f=2/3*exp(-3*t)*heaviside(t);
F=fourier(f);
subplot(2,1,1);
ezplot(f);
subplot(2,1,2);
ezplot(abs(F));