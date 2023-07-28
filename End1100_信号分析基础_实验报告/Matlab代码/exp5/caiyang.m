function fz = caiyang( fy,fs )  % 采样函数
    fs0=10000;  % 用远大于信号频率的采样频率对信号采样，近似一个连续信号
    t=-0.1:1/fs0:0.1;
    k1=0:999;k2=-999:-1;
    l1=length(k1);l2=length(k2);
    f=[fs0*k2/l2,fs0*k1/l1];
    w=[-2*pi*k2/l2,2*pi*k1/l1];
    fx1=eval(fy);  % 将字符串自动识别并转化为matlab命令
    FX1=fx1*exp(-1j*(1:length(fx1))'*w)*1/fs0;  % 其实是在求连续信号的傅里叶变换（数值计算）
    figure  % 绘制图形
    subplot(2,1,1),plot(t,fx1,'r-')
    axis([min(t),max(t),min(fx1),max(fx1)]);
    subplot(2,1,2),plot(f,abs(FX1))
    axis([-100,100,0,max(abs(FX1))+100]);
    Ts=1/fs;  % 采样频率为fs
    t1=-0.1:Ts:0.1;
    f1=[fs*k2/l2,fs*k1/l1];
    t=t1;
    fz=eval(fy);  % 将字符串自动识别并转化为matlab命令
    FZ=fz*exp(-1j*(1:length(fz))'*w);  % 求解采样之后离散信号的DTFT
    figure 
    subplot(2,1,1),stem(t,fz,'.')
    line([min(t),max(t)],[0,0])
    subplot(2,1,2),plot(f1,abs(FZ),'m')
end