clc;
clear all;
close all;

subplot(2,2,1);
t = 0:0.01:1;
f = 10;
y = sin(2*pi*f*t);
plot(t, y);
grid(true);
xlabel("Time");
ylabel("Amplitude");
title("Continuous Signal");

subplot(2,2,2);
fs = 0.5*f; % Undersampled
t1 = 0:1/fs:1;
y1 = sin(2*pi*f*t1);
stem(t1, y1);
hold on;
plot(t1, y1);
grid(true);
xlabel("Time");
ylabel("Amplitude");
title("Under Sampled Signal");

subplot(2,2,3);
fs2 = 2*f; % Nyquist sampled
t3 = 0:1/fs2:1;
y2 = sin(2*pi*f*t3);
stem(t3, y2);
hold on;
plot(t3, y2);
grid(true);
xlabel("Time");
ylabel("Amplitude");
legend("Discrete", "Continuous");
title("Nyquist Sampled Signal");

subplot(2,2,4);
fs3 = 100*f; % Oversampled
t4 = 0:1/fs3:1;
y3 = sin(2*pi*f*t4);
stem(t4, y3);
hold on;
plot(t4, y3);
grid(true);
xlabel("Time");
ylabel("Amplitude");
legend("Discrete", "Continuous");
title("Over Sampled Signal");
