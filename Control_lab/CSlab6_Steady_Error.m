clc, clear all, close all;
n=2*[1 3 10];
d=conv([1 2 0], [1 4 10]);
G=tf(n, d)

Kp=dcgain(G)
Essp=1/(1+Kp)

n1=conv([1 0], [n]);
sG=tf(n1, d);
Kv=dcgain(sG)
Essv=1/Kv

n2=conv([1 0 0], [n]);
s2G=tf(n2, d);
Ka=dcgain(s2G)
Essa=1/Ka