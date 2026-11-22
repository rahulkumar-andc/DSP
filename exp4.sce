//Exp 4


clear;
close;

// Frequency range
w = -%pi:0.01:%pi;

// Magnitude response
magH = 1 ./ sqrt(1.81 - 1.8*cos(w));

// Phase response
phaseH = -atan(0.9*sin(w) ./ (1 - 0.9*cos(w)));

// Magnitude plot
subplot(2,1,1);
plot(w, magH);
xtitle("Magnitude Response", "Frequency (rad/sample)", "|H(e^jw)|");

// Phase plot
subplot(2,1,2);
plot(w, phaseH);
xtitle("Phase Response", "Frequency (rad/sample)", "Phase (rad)");



subplot(2,2,3);
plot(0,0,'bo');
plot(0.9,0,'rx');
xtitle("Pole-Zero Plot", "Real Axis", "Imaginary Axis");
xgrid();
