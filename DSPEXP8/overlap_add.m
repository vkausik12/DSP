clc; 
clear all; 
close all; 
x = input('Enter the input sequence x : '); 
h = input('Enter the impulse response h : '); 
L = length(h); % Length of impulse response 
N = length(x); 
M = length(h); 
x_padded = [x, zeros(1, L - 1)]; 
y = zeros(1, N + M +1); 
num_sections = (N + L - 1) / L; % Calculate number of sections 
for n = 0:num_sections-1 
start_idx = n * L + 1; 
end_idx = start_idx + L - 1; 
x_section = x_padded(start_idx:min(end_idx, end)); 
conv_result = conv(x_section, h); 
y(start_idx:start_idx + length(conv_result) - 1) 
=y(start_idx:start_idx + length(conv_result) - 1) + conv_result; 
end 
y = y(1:N + M - 1); 
y_builtin = conv(x, h); 
% Display results 
disp('Overlap-add convolution result:'); 
disp(y); 
disp('Built-in convolution result:'); 
disp(y_builtin); 
figure; 
subplot(2, 1, 1); 
stem(y, 'filled'); 
title('Overlap-add Convolution Result'); 
grid on; 
subplot(2, 1, 2); 
stem(y_builtin, 'filled'); 
title('Built-in Convolution Result'); 
grid on; 