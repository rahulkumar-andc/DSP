// Experiment 1
clear;
n = [-10:50];
x0 = zeros(1, length(n));
x0(n == 0) = 1;
subplot(2, 2, 1);
plot2d3(n, x0);

x1 = ones(1, length(n));
x1(n < 0) = 0;
subplot(2, 2, 2);
plot2d3(n, x1);

x2 = n;
x2(n < 0) = 0;
subplot(2, 2, 3);
plot2d3(n, x2);

x3 = (0.8).^n;
x3(n < 0) = 0;
subplot(2, 2, 4);
plot2d3(n, x3);


// Experiment 2 - Part A
clear;
n = [-10:10];
x0 = zeros(1, length(n));
x0(-5 <= n & n <= 5) = 1;
subplot(2, 2, 1);
plot2d3(n, x0);

x1 = zeros(1, length(n));
x1(-5 <= n & n <= 5) = 1;
subplot(2, 2, 2);
plot2d3(n, x1);

y = convol(x0, x1);
ny = [-20:20];
subplot(2, 2, 3);
plot2d3(ny, y);


// Experiment 2 - Part B
clear;
n = [-10:10];
x0 = zeros(1, length(n));
x0(-5 <= n & n <= 5) = 1;
subplot(2, 2, 1);
plot2d3(n, x0);

x1 = zeros(1, length(n));
x1(-5 <= n & n <= 5) = 1;
subplot(2, 2, 2);
plot2d3(n, x1);
 
N1 = length(x0);
N2 = length(x1);
Ny = N1 + N2 - 1;
y = zeros(1, Ny);
for i = 1:N1
    for j = 1:N2
        y(i + j - 1) = y(i + j - 1) + x0(i) * x1(j);
    end
end
ny = [-20:20];
subplot(2, 2, 3);
plot2d3(ny, y);


// Experiment 3
clear;
n = [0:200];
x = cos(%pi * 0.5 * n);
y = zeros(1, length(n));
y(1) = x(1);
for i = 2:length(n)
    y(i) = 0.8 * y(i - 1) + x(i);
end
subplot(2, 2, 1);
plot2d3(n, y);

y1 = 0.781 * cos(%pi * 0.5 * n + 0.6);
subplot(2, 2, 2);
plot2d3(n, y1);


// Experiment 4
clear;
close;

// Frequency range
w = -%pi:0.01:%pi;

// Magnitude response
magH = 1 ./ sqrt(1.81 - 1.8 * cos(w));

// Phase response
phaseH = -atan(0.9 * sin(w) ./ (1 - 0.9 * cos(w)));

// Magnitude plot
subplot(2, 1, 1);
plot(w, magH);
xtitle("Magnitude Response", "Frequency (rad/sample)", "|H(e^jw)|");

// Phase plot
subplot(2, 1, 2);
plot(w, phaseH);
xtitle("Phase Response", "Frequency (rad/sample)", "Phase (rad)");

subplot(2, 2, 3);
plot(0, 0, 'bo');
plot(0.9, 0, 'rx');
xtitle("Pole-Zero Plot", "Real Axis", "Imaginary Axis");
xgrid();
