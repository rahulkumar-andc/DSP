//eperimet 1 
clear;
n=[-10:50]
x0=zeros(1,length(n));
x0(n==0)=1;
subplot(2,2,1);
plot2d3(n,x0);

x1=ones(1,length(n));
x1(n<0)=0;
subplot(2,2,2);
plot2d3(n,x1);

x2=n;
x2(n<0)=0;
subplot(2,2,3);
plot2d3(n,x2);

x3=(0.8)^n;
x3(n<0)=0;
subplot(2,2,4);
plot2d3(n,x3);
