clf; %周期信号的分解 
t=0:0.01:2*pi; 
y=zeros(10,max(size(t))); 
x=zeros(10,max(size(t))); 
for k=1:2:9 
    x1=sin(k*t)/k; 
    x(k,:)=x(k,:)+x1; 
    y((k+1)/2,:)=x(k,:); 
end 
subplot(2,1,1); plot(t,y(1:9,:)); 
grid; 
line([0,pi+0.5],[pi/4,pi/4]); 
text(pi+0.5,pi/4,'pi/4'); 
halft=ceil(length(t)/2); 
subplot(2,1,2); 
mesh(t(1:halft),[1:10],y(:,1: halft)); 