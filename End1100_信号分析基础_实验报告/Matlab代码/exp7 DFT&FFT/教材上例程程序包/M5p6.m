%����5-7����֪�����У� 

%�����ǵ��߾��yl(n)=h(n)*x(n)��N���Բ�ܾ��y(n)=h(n)NN x(n), 
%���о�����֮��Ĺ�ϵ�� 

clear all
n=[0:1:11];
m=[0:1:5];
N1=length(n);
N2=length(m);
xn=n;                      %����x(n)
hn=ones(1,N2);              %����h(n)
yln=conv(xn,hn);             %ֱ���ú���conv�������Ծ��
ycN1=circonv(xn,hn,N1);      %�ú���circonv����N1��Բ�ܾ��
ycn=circonv(xn,hn,N1+N2-1);  %�ú���circonv����N1+N2-1��Բ�ܾ��
nyl=[0:1:length(yln)-1];    
ny1=[0:1:length(ycN1)-1];
ny2=[0:1:length(ycn)-1];
subplot(3,1,1);             %��ͼ
stem(nyl,yln,'.');
ylabel('���Ծ��');
axis([0,18,0,60]);
subplot(3,1,2);
stem(ny1,ycN1,'.');
ylabel('Բ�ܾ��N1')
axis([0,18,0,60]);
subplot(3,1,3);
stem(ny2,ycn,'.');
ylabel('Բ�ܾ��N1+N2-1')
axis([0,18,0,60]);

