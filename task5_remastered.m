func = 'cos(x) - exp(0.001+x.^2)';

syms x
answ = solve(eval(func), x);
disp('Solution with solve():');
disp(answ);

zr = fzero(func, 0);
disp('Solution with fzero():');
disp(zr);

x = linspace(-10, 10, 1000);
plot(x, eval(func))
ylim([-10^6 10^6]);