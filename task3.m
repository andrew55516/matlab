
syms x

func_1 = atan(x)./2 - x./(2.*(1+x.^2).^2); 
func_2 = 3.*x^4 -14.*x.^3 + 12.*x.^2 + 24.*x + 6;
func_3 = (sin(3.*x)-cos(3.*x)).^2;

disp('1)');
disp(simplify(diff(func_1)));
disp('2)');
disp(simplify(diff(func_2)));
disp('3)');
disp(simplify(diff(func_3)));