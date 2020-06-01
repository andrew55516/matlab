n = input('n=');
syms x
P = x^(2*n) - n*x^(n+1)+n*x^(n-1) - 1;
plot_by_roots(P, @filter);

function [idx] = filter(vals)
    idx = (vals==real(vals));
    real_vals = vals(idx);
    [~, w] = unique(real_vals, 'stable' );
    idx = setdiff(1:numel(real_vals), w );
end
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