syms x
func = x.*exp(-x);
disp(limit(func));

func = tan(x.^(tan(2.*x)));
disp(limit(func, pi/4));

func = atan(1./(1-x));
disp(limit(func, 'x', 1, 'right'));