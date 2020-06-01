syms my_func(x)
func(x) = exp(1/(1-x.^2))./(1+x.^2);
start = -7;
finish = 7;
fplot(real(func), [start finish]); grid on

m_diff = diff(func);
x_vals = solve(m_diff == 0);
y_vals = func(x_vals);

hold on
plot(x_vals, y_vals, '*');
hold off

s_diff = diff(m_diff);
s_x_vals = solve(s_diff == 0);
s_y_vals = func(s_x_vals);

hold on
plot(s_x_vals, s_y_vals, '*');
hold off