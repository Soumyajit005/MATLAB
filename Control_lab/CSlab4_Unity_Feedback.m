clc
clear
close all
zeta = 0.5;
wn=10/(2*zeta)
K = wn^2
s = tf('s')
G = K/(s*(s+10))
T = feedback(G, 1)
stepinfo(T)

info = stepinfo(T)
tr = info.RiseTime
ts = info.SettlingTime
tp = info.PeakTime
Mp = info.Overshoot