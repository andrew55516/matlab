
filter = @(m_roots)m_roots==real(m_roots);
syms x
P = x^(3) - 6*x^(2)+15*x - 14;
plot_by_roots(P, filter);

P = 10*x^4 - 13*x^3 + 15*x^2 - 18*x - 24;
plot_by_roots(P, filter);

function [] = plot_by_roots(P, filter)
    P = coeffs(P, 'all');
    disp('Polynom: ');
    disp(P);

    p_roots = roots(P);
    disp('Roots: ');
    disp(p_roots);

    idx = filter(p_roots);
    real_roots = p_roots(idx);

    max_val = max(real_roots);
    min_val = min(real_roots);

    if max_val == min_val
        disp('Segment has zero lenght');
    end

    x = linspace(min_val, max_val);
    poly_vals = polyval(double(P), double(x));
    plot(x, poly_vals ); 
end
