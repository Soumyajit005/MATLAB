clc;
clear all;
close all;
n = -15:0.01:15;
A=10;
w0=pi/8;
phi1=0;
phi2=pi/3;
phi3=-pi/4;

X1= A*cos(w0*n+phi1);
X2= A*cos(w0*n+phi2);
X3= A*cos(w0*n+phi3);

figure(1);
subplot (3,1,1);
plot (n,X1,'r');
subplot (3,1,2);
plot (n,X2,'g');
subplot (3,1,3);
plot (n,X3,'b');