syms x

disp('1)');
F = exp(x);
n = 6;
disp(taylor(F, 'order', n));

disp('2)');
F = (sin(x)).^2;
n = 11;
disp(taylor(F, 'order', n));