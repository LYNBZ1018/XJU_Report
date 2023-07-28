syms t w;
% u(t+1)-u(t-1)
f1 = heaviside(t+1) - heaviside(t-1);
F1 = fourier(f1, t, w);
F1 = simplify(F1);
disp('u(t+1)-u(t-1)');
disp('F1(w) = ');
disp(F1);

% e^(-3t)u(t)
f2 = exp(-3*t)*heaviside(t);
F2 = fourier(f2, t, w);
F2 = simplify(F2);
disp('e^(-3t)u(t)');
disp('F2(w) = ');
disp(F2);

% e^(-t)u(t)
f3 = exp(-t)*heaviside(t);
F3 = fourier(f3, t, w);
F3 = simplify(F3);
disp('e^(-t)u(t)');
disp('F3(w) = ');
disp(F3);
