clear;
 num=[0.8 -0.44 0.36 0.02]; 
 den=[1 0.7 -0.45 -0.6]; 
 k=256;w=0:pi/k:pi; 
  h=freqz(num,den,w);     
subplot(2,2,1);  plot(w/pi,real(h)); grid, title('实部')
      xlabel('＼omega/＼pi'); ylabel('幅度')
      subplot(2,2,2);   plot(w/pi,imag(h)); grid, title('虚部'); xlabel('＼omega/＼pi'); ylabel('幅值')  
subplot(2,2,3);  plot(w/pi,abs(h)); grid, title('幅度谱'); xlabel('＼omega/＼pi'); ylabel('幅值')
      subplot(2,2,4);   plot(w/pi,angle(h)); grid, title('相位谱'); xlabel('＼omega/＼pi'); ylabel('弧度') ; 
