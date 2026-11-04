clc;
close all;
clear all;
n= -20:1:20;
xn = (0.8).^n .*(n>=0);
w= -pi :0.01: pi;

for k = 1:length(w)
    Xw(k) = sum (xn.*exp(-1j*w(k)*n));
end

figure(1);
subplot(2,1,1);
stem (n,xn);
subplot (2,1,2);
plot (w,abs(Xw));