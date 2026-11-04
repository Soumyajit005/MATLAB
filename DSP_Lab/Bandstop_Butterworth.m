Fs = 1000;

wp = [50 70]/(Fs/2);
ws = [55 65]/(Fs/2);

[N, Wn] = buttord(wp, ws, 1, 45);
[b, a] = butter(N, Wn, 'stop');

freqz(b, a);