[n,Wn]=buttord(0.2,0.3,1,25,'s');
[b,a]=butter(n,Wn,'s');
[bz,az]=impinvar(b,a,1);
freqz(bz,az,128);