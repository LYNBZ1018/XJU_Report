t = 0 : 0.01 : 4 * pi;  % 设置t的区间范围

y1 = sin(t);
y2 = sin(t + pi / 3);  % 相位差为 pi/3

figure;
plot(t, y1, '--r', 'LineWidth', 1.2);  % -线型 红色
hold on;
plot(t, y2, '-.g', 'LineWidth', 1.2);  % .线型 绿色

xlim([0 4*pi]);  % 横坐标范围
ylim([-1, 1]);  % 纵坐标范围

% 添加横纵坐标
xlabel('x');  
ylabel('y');

% 添加标题 
title('相同周期不同相位的两个正弦图像');

% 添加图注信息
legend('相位=0', '相位=\pi/3');
