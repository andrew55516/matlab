disp('1)');
func = 'sin(exp(x))';
start = -5;
finish = 5;
my_solve(func, start, finish);

disp('2)')
func = 'sin(x.*(1-x))';
start = 0;
finish = 2*pi;
my_solve(func, start, finish);

disp('3)');
func = 'x.*sin(x)-cos(x)';
start = 0;
finish = 4*pi;
my_solve(func, start, finish);


function [] = my_solve(func, start, finish)
    m=100;
    x=linspace(start,finish,m);
    figure
    plot(x,eval(func),x,0*x,':'); grid on
    xlabel('x'); ylabel('y')
    title(func);
   
    z=ginput(1);
    [zr,fr]=fzero(func,z(1));
    
    hold on
    plot(zr,fr,'r*',z(1),z(2),'g*')
    hold off
       
end