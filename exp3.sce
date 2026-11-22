//experiment 3
clear;
n=[0:200];
x=cos(%pi*0.5*n);
y = zeros(1, length(n));
y(1) = x(1);
for i= 2:length(n);
    y(i)= 0.8* y(i-1)+x(i);
end
subplot(2,2,1);
plot2d3(n,y);

y1=0.781 * cos(%pi*0.5*n + 0.6);
subplot(2,2,2);
plot2d3(n,y1);
