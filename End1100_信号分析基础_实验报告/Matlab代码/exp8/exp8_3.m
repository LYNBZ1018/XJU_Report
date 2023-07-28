wp =0.6*pi; 
ws=0.7*pi;  
N= ceil(8*pi/(ws-wp)) 
if rem(N,2)==0 
N=N+1; 
end 
Nw =N;  
wc =(wp+ws)/2; 
n=0:N-1;
a=(N-1)/2;  
m =n-a+0.00001;  
hd =sin(wc*m)./(pi*m); 
win =(hanning(Nw))'; 
h=hd.*win; 
b=h;  
freqz(b,1) 