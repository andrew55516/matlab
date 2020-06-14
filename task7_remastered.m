syms x
func = exp(1/(1 - x.^2))/(1+x.^2);
ezplot(func, -7, 7);
hold on;
k1 = double(limit(func./x, -inf));
k2 = double(limit(func./x, +inf));
b1 = double(limit(func - k1.*x, -inf));
b2 = double(limit(func - k2.*x, +inf));
ezplot(k1*x + b1, -7, 7);
ezplot(k2*x + b2, -7, 7);
x_vals = solve(diff(func) == 0);
F = @(a) (exp(1./(1 - a.^2))./(1+a.^2));
y_vals = F(x_vals);
plot(x_vals, y_vals, 'r*')
