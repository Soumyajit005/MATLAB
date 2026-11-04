% Lab Experiment: Energy and Power of DT Signals
clc; clear; close all;

% Define range of n
n = -10:1:10;

% (I) x1[n] = (3/8)^8 * u(n)
x1 = ((3/8)^8) * (n >= 0);

% (II) x2[n] = u(2n)
x2 = (2*n >= 0);

% (III) x3[n] = sin(3*pi*n/4)
x3 = sin(3*pi*n/4);

% (IV) x4[n] = 2*u(3-n)
x4 = 2 * (3-n >= 0);

% Function to compute energy and power
computeEP = @(x) deal(sum(abs(x).^2), mean(abs(x).^2));

% Compute energy and power for each signal
[E1, P1] = computeEP(x1);
[E2, P2] = computeEP(x2);
[E3, P3] = computeEP(x3);
[E4, P4] = computeEP(x4);

% Display results in both fixed-point and scientific notation
fprintf('Results:\n');
fprintf('(I) Energy = %.2f (%.3e), Power = %.2f (%.3e)\n', E1, E1, P1, P1);
fprintf('(II) Energy = %.2f (%.3e), Power = %.2f (%.3e)\n', E2, E2, P2, P2);
fprintf('(III) Energy = %.2f (%.3e), Power = %.2f (%.3e)\n', E3, E3, P3, P3);
fprintf('(IV) Energy = %.2f (%.3e), Power = %.2f (%.3e)\n', E4, E4, P4, P4); 