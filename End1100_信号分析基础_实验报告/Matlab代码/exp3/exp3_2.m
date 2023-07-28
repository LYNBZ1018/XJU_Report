clf; 
t=-2:0.001:2; 
N=20; c0=0.5; 
f1=c0*ones(1,length(t));
for n=1:N 
    f1=f1+cos(pi*n*t)*sinc(n/2); 
end 
plot(t,f1); axis([-2 2 -0.2 0.8]); 