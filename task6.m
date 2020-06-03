disp('1)')
n = input('n = ');
x = 1:1:n;
y = 1/n:1/n:1;
m_plot(x, y, 1)

disp('2)')
x = -1:1:3;
y = [6, 5, 0, 3, 2];
m_plot(x, y, 2);

function []= m_plot(x, y, n)
    P = polyfit(x, y, length(x)-1);
    r = roots(P);
    r = r(r == real(r));
    [start, ~] = min(r);
    [finish, ~] = max(r);
    p_x = linspace(start, finish, 100);
    F = polyval(P, p_x);
    figure(n);
    plot(x, y, 'ro', p_x, F); 
    title([num2str(n) ')']);
end