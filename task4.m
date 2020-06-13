syms x
disp('Solution with solve():');
disp(solve(x.^2+1 == 0, x));

disp('Solution with fzero():');
disp(fzero('x^2+1',0));