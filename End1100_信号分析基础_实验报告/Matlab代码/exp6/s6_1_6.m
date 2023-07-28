clear;
clf; 
N=40; num=[2.2403 2.4908 2.2403]; 
den=[1 -0.4 0.75]; y=impz(num,den,N); 
stem(y); xlabel('时间n'); ylabel('幅值'); 
title('冲激响应'); grid; 