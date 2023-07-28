function [X]=dtft(x,w)
% 计算x序列离散时间傅立叶变换
% [X]=dtft(x,n,w),
% X = 在w频率点上的DTFT数组,
% x = 沿n的有限长度序列,
% n = 样本位置向量
% w = 频率点位置向量
n=1:length(x);
ewn=exp(-n'*w*i);
X=x*ewn;
%调用时可选如下方案1或方案2
%方案1
%w=linspace(-2*pi,2*pi,1000)/dt;dt为时间间隔	
% w是1000点行向量
% X0 = dtft(x0,w)*dt;
%方案2
% k=0:511; f=fs*k/512;	%由wk=2πk/512可求得模拟频率f
% Xa=dtft(xa,2*pi*k/512);   % 近似模拟信号频谱
end