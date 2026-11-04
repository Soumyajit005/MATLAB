clc;
close all;
clear all;
n1= -2:1:2;
n2= -1:1:3;
h= 1*(n1==-2)+2*(n1==-1)+1*(n1==0)-2*(n1==1)-1*(n1==2)+0*(n1<-2 & n1>2);
x= 1*(n2==-1)+2*(n2==0)+3*(n2==1)-1*(n2==2)-3*(n2==3)+0*(n2<-1 & n2>3);

n3= -3:1:5;
y= conv(h,x);
subplot (3,1,1);
stem(n1,h, 'r');
grid on;
subplot (3,1,2);
stem(n2,x);
grid on;
subplot (3,1,3);
stem(n3,y, 'b');
grid on;