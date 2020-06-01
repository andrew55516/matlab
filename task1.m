syms x y
P = x^5 + 4*x.^4 - 2.*x.^3 - 14.*x.^2 - 3.*x - 18;
disp(factor(P));

P = x^3 + y*x.^2 + x.^2 - 2.*x.*y.^2 +x.*y-2.*y^2;
disp(factor(P));