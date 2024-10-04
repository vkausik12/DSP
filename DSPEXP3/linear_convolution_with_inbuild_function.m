clc;
clear all;
close all;

% Input sequences with validation
x1 = input("Enter first sequence (as a vector, e.g., [1 2 3]): ");
h1 = input("Enter second sequence (as a vector, e.g., [1 1]): ");

% Ensure inputs are vectors
if ~isvector(x1) || ~isvector(h1)
    error('Both inputs must be vectors.');
end

% Perform convolution
y1 = conv(x1, h1);
disp("The convoluted sequence is: ");
disp(y1);

% Lengths of the sequences
l = length(x1);
m = length(h1);
k = l + m - 1;

% Time indices for each signal
n1 = 0:l-1;
n2 = 0:m-1;
n3 = 0:k-1;

% Plotting
subplot(1,3,1);
stem(n1, x1, "o");
xlabel("n");
ylabel("Amplitude");
title("x(n)");
grid on;
xlim([-1 l+1]);
ylim([0 max(x1)+2]);

subplot(1,3,2);
stem(n2, h1, "o");
xlabel("n");
ylabel("Amplitude");
title("h(n)");
grid on;
xlim([-1 m+1]);
ylim([0 max(h1)+2]);

subplot(1,3,3);
stem(n3, y1, "o");
xlabel("n");
ylabel("Amplitude");
title("y(n) = x(n) * h(n)");
grid on;
xlim([-1 k+1]);
ylim([0 max(y1)+2]);
