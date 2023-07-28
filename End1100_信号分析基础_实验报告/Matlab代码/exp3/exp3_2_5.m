clf;
dt=2*pi/8; w=linspace(-2*pi,2*pi,2000)/dt;
k=-2:2; f=ones(1,5); F=f*exp(-1i*k'*w);
f1=abs(F); plot(w,f1); grid;