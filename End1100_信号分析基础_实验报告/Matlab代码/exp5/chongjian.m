function fh = chongjian( fz,fs )
    T=1/fs;dt=T/10;
    t=-0.1:dt:0.1;
    n=-0.1/T:0.1/T;
    TMN=ones(length(n),1)*t-n'*T*ones(1,length(t));
    fh=fz*sinc(fs*TMN);
    k1=0:999;k2=-999:-1;
    l1=length(k1);l2=length(k2);
    w=[-2*pi*k2/l2,2*pi*k1/l1];
    FH=fh*exp(-1j*[1:length(fh)]'*w);
     figure
    subplot(2,1,1),plot(t,fh,'g')
    axis([min(t),max(t),min(fh),max(fh)]);
    line([min(t),max(t)],[0,0])
    f=[10*fs*k2/l2,10*fs*k1/l1];
    subplot(2,1,2),plot(f,abs(FH),'g'),
    axis([-100,100,0,max(abs(FH))+2]);
end