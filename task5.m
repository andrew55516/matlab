syms x
func = cos(x) - exp(0.001+x^2);

answ = solve(func);
disp('Solution with solve():');
my_plot(func, answ, subs(func,answ), 'solve');
disp(answ);

[zr, fr] = fzero(matlabFunction(func),0);
disp('Solution with fzero():');
my_plot(func, zr, fr, 'fzero');
disp(zr);


function [] = my_plot(func, zr, fr, p_title)
    m=1000;
    start_point = -100;
    end_point = 100;
    x=linspace(start_point,end_point,m);
    figure
    plot(x,eval(func)); grid on
    xlabel('x'); ylabel('y')
    title(p_title);

    if ~isnan(zr)
    hold on
    plot(zr, fr,'r*');
    hold off
    end
end