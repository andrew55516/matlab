syms n x k
disp('1) ');
disp(symsum(-1^((n^2+n)/2)*n/2^n))

disp('2) ');
disp(symsum(((3-x).^(2.*n))./sqrt(n), n, [1 Inf]));

disp('3) ');
disp(symsum(1./(x-k).^3, k, -Inf, Inf));