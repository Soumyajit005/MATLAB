syms n z a T

% Assign assumptions properly
assumeAlso(z, 'real')
assumeAlso(a, 'positive')
assumeAlso(T, 'positive')

% (a) x[n] = n
X1 = simplify(symsum(n*z^(-n), n, 0, inf));
disp('Z{n} ='); pretty(X1)

% (b) x[n] = a^n
X2 = simplify(symsum(a^n*z^(-n), n, 0, inf));
disp('Z{a^n} ='); pretty(X2)

% (c) x[n] = n*a^n
X3 = simplify(symsum(n*a^n*z^(-n), n, 0, inf));
disp('Z{n*a^n} ='); pretty(X3)

% (d) x[n] = e^{-a n T}
b = exp(-a*T);
X4 = simplify(symsum(b^n*z^(-n), n, 0, inf));
disp('Z{e^{-a n T}} ='); pretty(X4)


