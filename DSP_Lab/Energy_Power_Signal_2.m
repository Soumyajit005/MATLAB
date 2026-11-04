clc;
close all;
clear all;
n = -10:1:10;
N = max(n);
x= (n >= 0); % u(2n) is 1 when 2n >= 0  <=> n >= 0  => same as u(n)
x_sq = abs(x.^2);  % absolute value
E= sum(x_sq);
P= E/(2*N +1);
disp(['Energy,E=' num2str(E) 'J']);
disp(['Power,P=' num2str(P) 'W']);