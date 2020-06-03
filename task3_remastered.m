x0 = 4;
P = [1, -2, 6, -10, 16];
disp('Polynom');
disp(P);

[q, r] = deconv(P, [1, -x0]);
[q, r] = deconv(q, [1, -x0]);
disp('Derivative: ')
disp(r(end))