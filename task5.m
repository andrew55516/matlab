syms x

disp('1) ');
P_1 = x.^2;
P_2 = (x-1).*(x+2).*(x+3);
disp(dec(P_1, P_2));

disp('2) ');
P_1 = 3 + x;
P_2 = (x-1).*(x.^2+1);
disp(dec(P_1, P_2));


disp('3) ');
P_1 = x.^2;
P_2 = (x.^4-1);
disp(dec(P_1, P_2));


function [P, K] = dec(P_1, P_2)
    syms x
    coef_1 = double(coeffs(P_1, 'all'));
    coef_2 = double(coeffs(P_2, 'all'));
    [r, s, K]=residue(coef_1, coef_2);
    P = r./(x-s);
end