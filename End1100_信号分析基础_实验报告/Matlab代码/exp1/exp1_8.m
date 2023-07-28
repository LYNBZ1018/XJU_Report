t = linspace(0,2 * pi, 1000);
z = @(t)exp((-2 - 1j) * t);  % 匿名函数用z(t)调用函数
subplot(2, 3, 1);
% 实部
plot(t, real(z(t)));
title('实部');
xlabel('t');
ylabel('real');

subplot(2, 3, 2);
% 虚部
plot(t, imag(z(t)));
title('墟部');
xlabel('t');
ylabel('imag');

subplot(2, 3, 3);
% 模
plot(t, abs(z(t)));
title('模');
xlabel('t');
ylabel('|z|');

subplot(2, 3, 4);
% 相角
plot(t, angle(z(t)));
title('相角');
xlabel('t');
ylabel('angle');

subplot(2, 3, 5);
% 极坐标
polarplot(angle(z(t)), abs(z(t)));
title('极坐标');

subplot(2, 3, 6);
% 实部和虚部关系
plot(real(z(t)), imag(z(t)));
title('实部和虚部关系');
xlabel('real');
ylabel('imag');