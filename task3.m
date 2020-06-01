x0 = 4;
syms x
P = x.^4 - 2.*x.^3 + 6 .* x.^2 - 10.*x + 16;
disp('Polynom');
disp(P);

h_f = horner(P);
disp('Horner form');
disp(h_f);
disp('Result');
disp(subs(h_f, x, x0));

h_f = diff(P);
disp('Polynom derivative horner form');
disp(h_f);
disp('Result');
disp(subs(h_f, x, x0));