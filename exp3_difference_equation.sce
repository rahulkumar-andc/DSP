// Experiment 3: First-Order Difference Equation Response
clear;
clc;

n = 0:200;
x = cos(%pi * 0.5 * n);

// Difference Equation Simulation: y[n] = 0.8*y[n-1] + x[n]
y = zeros(1, length(n));
y(1) = x(1);

for i = 2:length(n)
    y(i) = 0.8 * y(i-1) + x(i);
end

subplot(2, 1, 1);
plot2d3(n, y);
title("Simulated Response y[n]");
xlabel("Sample index n"); ylabel("y[n]");

// Theoretical Analytical Steady-State Response
y1 = 0.781 * cos(%pi * 0.5 * n + 0.6);
subplot(2, 1, 2);
plot2d3(n, y1);
title("Theoretical Steady-State Response y1[n]");
xlabel("Sample index n"); ylabel("y1[n]");
