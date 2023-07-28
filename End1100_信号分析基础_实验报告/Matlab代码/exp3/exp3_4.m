t=-1.5:0.01:1.5;
wo=4;
E=1;
N=50; % N = [10, 20, 30, 40, 50]
xN=0;
for n=1:N
    an=(E/(n*pi))*(sin(n*pi/2)-sin(n*3*pi/2));
    xN=xN+an.*cos(n*wo*t);
end
subplot(221); plot(t,xN)
xlabel('time');
ylabel('approximation N');
axis([-2 2 -0.7 0.7]);