syms x
syms_P = (x-1)^100;
P = coeffs(syms_P, 'all');
m_roots = roots(P);

idx = m_roots==real(m_roots);
real_roots = m_roots(idx);

x = linspace(-100, 100);
poly_vals = polyval(double(P), double(x));
plot(x, poly_vals);
hold on
plot(real_roots,zeros(size(real_roots)),'r*');