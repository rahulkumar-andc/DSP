// Experiment 2: Linear Convolution (Part A & Part B)
clear;
clc;

n = -10:10;
x0 = zeros(1, length(n));
x0(-5 <= n & n <= 5) = 1;

x1 = zeros(1, length(n));
x1(-5 <= n & n <= 5) = 1;

// Part A: Using built-in convol()
y = convol(x0, x1);
ny = -20:20;  // Length = 21 + 21 - 1 = 41

subplot(3, 1, 1);
plot2d3(n, x0);
title("Input Pulse x0[n]");

subplot(3, 1, 2);
plot2d3(n, x1);
title("Input Pulse x1[n]");

subplot(3, 1, 3);
plot2d3(ny, y);
title("Linear Convolution Output y[n] (convol)");
xlabel("n");

// Part B: Manual Nested Loops
N1 = length(x0);
N2 = length(x1);
Ny = N1 + N2 - 1;
y_manual = zeros(1, Ny);

for i = 1:N1
    for j = 1:N2
        y_manual(i + j - 1) = y_manual(i + j - 1) + x0(i) * x1(j);
    end
end
