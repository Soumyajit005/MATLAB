Fs = 3000;
wp = 800/(Fs/2);
ws = 500/(Fs/2);

[N, Wn] = buttord(wp, ws, 1, 45);
[b, a] = butter(N, Wn, 'high');

freqz(b, a);