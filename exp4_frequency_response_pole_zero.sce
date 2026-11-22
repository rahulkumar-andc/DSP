// Experiment 4: Frequency Response & Pole-Zero Plot
clear;
clc;

w = -%pi:0.01:%pi;

// Magnitude & Phase
magH = 1 ./ sqrt(1.81 - 1.8 * cos(w));
phaseH = -atan(0.9 * sin(w) ./ (1 - 0.9 * cos(w)));

subplot(2, 2, 1);
plot(w, magH);
xtitle("Magnitude Response", "Frequency \omega (rad/sample)", "|H(e^j\omega)|");

subplot(2, 2, 2);
plot(w, phaseH);
xtitle("Phase Response", "Frequency \omega (rad/sample)", "Phase (rad)");

subplot(2, 2, 3);
plot(0, 0, 'bo');     // Zero at origin (0,0)
plot(0.9, 0, 'rx');   // Pole at 0.9
xtitle("Pole-Zero Plot (Stable System)", "Real Axis", "Imaginary Axis");
xgrid();
