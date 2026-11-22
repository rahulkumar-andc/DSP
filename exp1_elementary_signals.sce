// Experiment 1: Elementary Discrete-Time Signals
clear;
clc;

n = -10:50;  // Range of sample indices

// 1. Unit Sample Sequence delta[n]
x0 = zeros(1, length(n));
x0(n == 0) = 1;
subplot(2, 2, 1);
plot2d3(n, x0);
title("Unit Sample Sequence \delta[n]");
xlabel("Sample index n"); ylabel("\delta[n]");

// 2. Unit Step Sequence u[n]
x1 = ones(1, length(n));
x1(n < 0) = 0;
subplot(2, 2, 2);
plot2d3(n, x1);
title("Unit Step Sequence u[n]");
xlabel("Sample index n"); ylabel("u[n]");

// 3. Ramp Sequence r[n]
x2 = n;
x2(n < 0) = 0;
subplot(2, 2, 3);
plot2d3(n, x2);
title("Ramp Sequence r[n]");
xlabel("Sample index n"); ylabel("r[n]");

// 4. Real Exponential Sequence x[n] = (0.8)^n
x3 = (0.8).^n;
x3(n < 0) = 0;
subplot(2, 2, 4);
plot2d3(n, x3);
title("Real Exponential Sequence (a=0.8)");
xlabel("Sample index n"); ylabel("x[n]");
