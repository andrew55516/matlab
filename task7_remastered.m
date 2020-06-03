disp('1) ');
P = [1, -6, 15, -14];
disp('Roots: ');
disp(m_plot(P, 1));

disp('2) ');
P = [1, -2, -8, 13, -24];
disp('Roots: ');
disp(m_plot(P, 2));

function [r]= m_plot(P, n)
    r = roots(P);
    r_r = r(r == real(r));
    [start, ~] = min(r_r);
    [finish, ~] = max(r_r);
    x = linspace(start-2, finish+2, 100);
    F = polyval(P, x);
    figure(n);
    plot(x, F); 
    title([num2str(n) ')']);
end