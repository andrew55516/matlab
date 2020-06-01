my_taylor(exp(x), 0, 6);
my_taylor((sin(x)).^2, 0, 11);


function [] = my_taylor(func, start, n)
    syms x
    disp(func);
    disp(taylor(func, x, start, 'Order', n));
end
