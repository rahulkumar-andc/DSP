//experiment2
clear;
n=[-10:10]
x0=zeros(1,length(n));
x0(-5<=n & n<=5)=1;
subplot(2,2,1);
plot2d3(n,x0);

x1=zeros (1,length(n));
x1(-5<=n & n<=5)=1;
subplot(2,2,2);
plot2d3(n,x1);

y=convol(x0,x1);
ny=[-20:20];
subplot(2,2,3);
plot2d3(ny,y);

// B part 
clear;
n=[-10:10]
x0=zeros(1,length(n));
x0(-5<=n & n<=5)=1;
subplot(2,2,1);
plot2d3(n,x0);

x1=zeros (1,length(n));
x1(-5<=n & n<=5)=1;
subplot(2,2,2);
plot2d3(n,x1);
 
N1=length(x0);
N2=length(x1);
Ny=N1+N2-1;
y=zeros(1,Ny);
for i=1:N1
    for j=1:N2
        y(i+j-1)=y(i+j-1)+x0(i)*x1(j);
        end
end
ny=[-20:20];
subplot(2,2,3);
plot2d3(ny,y);
