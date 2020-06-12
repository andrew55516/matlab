r = ones(1,100);
P = poly(r);
r = roots(P);
start = min(r);
finish = max(r);
X = linspace(start - 2, finish + 2, 101);
P_r = polyval(P, r);
plot(X, P, r, P_r, 'ro')
ylim([-10^20 10^20]);