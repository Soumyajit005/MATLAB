Fs = 2500;

wp_lp = 400/(Fs/2); ws_lp = 0.40;
[Nlp,~] = buttord(wp_lp, ws_lp, 1, 50);

wp_hp = 400/(Fs/2); ws_hp = 0.25;
[Nhp,~] = buttord(wp_hp, ws_hp, 1, 50);

wp_bp = [400 900]/(Fs/2);
ws_bp = [350 950]/(Fs/2);
[Nbp,~] = buttord(wp_bp, ws_bp, 1, 50);

fprintf('LP=%d HP=%d BP=%d\n', Nlp, Nhp, Nbp);
