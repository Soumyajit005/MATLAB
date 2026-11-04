Fs = 2000;
Fc = 300;
wp = Fc/(Fs/2);
ws = 1.5*wp;
[N,Wn] = buttord(wp, ws, 1, 40);
[b,a] = butter(N, Wn, 'low');
freqz(b,a);