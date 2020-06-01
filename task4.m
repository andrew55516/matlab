
syms x

func_1 = sqrt(1-x^2)/x^2;
func_2 = 1/(sin(x))^3;
func_3 = log(sin(x));

disp('1) ');
disp(simplify(int(func_1)));
disp('2) ');
disp(simplify(int(func_2)));
disp('3) ')
disp(simplify(int(func_3,0, pi/2)));
