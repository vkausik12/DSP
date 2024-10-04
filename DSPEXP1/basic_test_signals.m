clc;
clear all;
close all;

subplot(3,3,1);
t = -5:1:5;
y = [zeros(1,5), 1, zeros(1,5)]; % Correct unit impulse
stem(t,y);
xlabel("Time(s)");
ylabel("Amplitude");
title("Unit Impulse Signal");

subplot(3,3,2);
t2 = 0:0.01:1;
f = 5;
y2 = square(2*pi*f*t2);
stem(t2,y2);
hold on;
plot(t2,y2);
xlabel("Time(s)");
ylabel("Amplitude");
title("Bipolar Pulse Signal");
legend("Discrete","Continuous");

subplot(3,3,3);
t3 = 0:0.1:1;
f = 5;
y3 = abs(square(2*pi*f*t3));
stem(t3,y3);
hold on;
plot(t3,y3);
xlabel("Time(s)");
ylabel("Amplitude");
title("Unipolar Pulse Signal");
legend("Discrete","Continuous");

subplot(3,3,4);
t4 = -5:1:5;
y4 = t4 .* (t4 >= 0);
stem(t4,y4);
hold on;
plot(t4,y4);
xlabel("Time(s)");
ylabel("Amplitude");
title("Unit Ramp Signal");
legend("Discrete","Continuous");

subplot(3,3,5);
t5 = 0:0.025:1;
f = 10;
y5 = sawtooth(2*pi*f*t5, 0.5); % Confirm if sawtooth is desired
stem(t5,y5);
hold on;
plot(t5,y5);
xlabel("Time(s)");
ylabel("Amplitude");
title("Sawtooth Signal"); % Change title if necessary
legend("Discrete","Continuous");

subplot(3,3,6);
t6 = 0:0.001:1;
f = 10;
y6 = sin(2*pi*f*t6);
stem(t6,y6);
hold on;
plot(t6,y6);
xlabel("Time(s)");
ylabel("Amplitude");
title("Sine Wave");
legend("Discrete","Continuous");

subplot(3,3,7);
t7 = 0:0.001:1;
f = 10;
y7 = cos(2*pi*f*t7);
stem(t7,y7);
hold on;
plot(t7,y7);
xlabel("Time(s)");
ylabel("Amplitude");
title("Cosine Wave");
legend("Discrete","Continuous");

subplot(3,3,8);
t8 = -5:0.1:5; % Adjusted for better visualization
y8 = exp(t8);
stem(t8,y8);
hold on;
plot(t8,y8);
xlabel("Time(s)");
ylabel("Amplitude");
title("Exponential Signal");
legend("Discrete","Continuous");

subplot(3,3,9);
t9 = -5:1:5;
y9 = [zeros(1,5), ones(1,6)];
stem(t9,y9);
xlabel("Time(s)");
ylabel("Amplitude");
title("Unit Step Signal");
