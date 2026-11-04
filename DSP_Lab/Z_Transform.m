% ztransform_one_sided_clean_R2015a.m
clc; clear; close all;

syms n a T z r

%% (a) x[n] = n u[n]
% Use r = 1/z
clear r; syms r;
r = 1/z;
assume(abs(r) < 1);        % equivalent to |z| > 1
% sum_{n=0}^\infty n r^n = r/(1-r)^2
S_n = r/(1 - r)^2;
X1 = subs(S_n, r, 1/z);    % get expression in z
X1s = simplify(X1);
disp('7(a) One-sided Z-transform of n u[n]:');
pretty(X1s);

%% (b) x[n] = a^n u[n]
% use r = a/z
clear r; syms r;
r = a/z;
assume(abs(r) < 1);       % equivalent to |z| > |a|
% sum_{n=0}^\infty r^n = 1/(1-r)
S_a = 1/(1 - r);
X2 = z * subs(S_a, r, a/z);   % since sum a^n z^-n = sum (a/z)^n = 1/(1-a/z) = z/(z-a)
X2s = simplify(X2);
disp('7(b) One-sided Z-transform of a^n u[n]:');
pretty(X2s);

%% (c) x[n] = n * a^n u[n]
% r = a/z
clear r; syms r;
r = a/z;
assume(abs(r) < 1);        % |z| > |a|
% sum_{n=0}^\infty n r^n = r/(1-r)^2
S_na = r/(1 - r)^2;
X3 = z * subs(S_na, r, a/z);    % convert back to z
X3s = simplify(X3);
disp('7(c) One-sided Z-transform of n*a^n u[n]:');
pretty(X3s);

%% (d) x[n] = exp(-a*n*T) u[n]
% alpha = exp(-a*T); r = alpha/z
alpha = exp(-a*T);
clear r; syms r;
r = alpha/z;
assume(abs(r) < 1);        % |z| > |alpha| = exp(-a*T)
% sum_{n=0}^\infty r^n = 1/(1-r)
S_alpha = 1/(1 - r);
X4 = z * subs(S_alpha, r, alpha/z);   % z/(z - alpha)
X4s = simplify(X4);
disp('7(d) One-sided Z-transform of exp(-a*n*T) u[n]:');
pretty(X4s);