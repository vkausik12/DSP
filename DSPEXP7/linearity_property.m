clc; 
clear all; 
close all; 
x=input("enter first sequence"); 
h=input("enter sequence sequence:"); 
lx=length(x); 
lh=length(h); 
if lx>lh 
h=[h zeros(1,lx-lh)] 
else 
x=[x zeros(1,lh-lx)] 
 
end 
a=input("enter value of 'a':"); 
b=input("enter value of 'b':"); 
lhs=fft((a.*x)+(b.*h)); 
rhs=a.*fft(x)+b.*fft(h); 
disp('LHS'); 
disp(lhs); 
disp('RHS'); 
disp(rhs); 
if lhs==rhs 
disp('Linearity property verified'); 
else 
disp('Linearity property not verified'); 
 
end