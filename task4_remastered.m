n = input('n = ');
P = zeros(1, 2*n+1);
P(1) = 1;
P(n) = -n;
P(n+2) = n;
P(end) = -1;
r = roots(P);
r = r(r == real(r));
pow = zeros(1, length(r));
for ind = 1:1:length(r)
    [q, res] = deconv(P, [1, -r(ind)]);
    while abs(res(end)) <= 10^-10 
        [q, res] = deconv(q, [1, -r(ind)]);
        pow(ind) = pow(ind) + 1;
    end
    temp = ['Кратность корня x = ' num2str(r(ind)) ' равна ' num2str(pow(ind))];
    disp(temp)
end
[start, ~] = min(r);
[finish, ~] = max(r);
x = linspace(start-2,finish+2);
F = polyval(P, x);
plot(x, F);
ylim([-100 100])
hold on
y = 0*x;
plot(x, y, 'red');
