 x='exp(2*t).*sin(600*pi*t)';
fs=caiyang(x,2000);
fr=chongjian(fs,2000);
fs=caiyang(x,600);
fr=chongjian(fs,600);
fs=caiyang(x,200);
fr=chongjian(fs,200);