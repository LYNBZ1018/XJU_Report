clear;
N=41; 
a=[0.8 -0.44 0.36 0.22];  b=[1 0.7 -0.45 -0.6]; 
x=[1 zeros(1,N-1)];     
k=0:1:N-1;  y=filter(a,b,x); 
stem(k,y); 
xlabel('n'); ylabel('幅度') ;
x