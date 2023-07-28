[n,Wn]=buttord(0.2,0.3,1,25);
[b,a]=butter(n,Wn);
freqz(b,a,128);