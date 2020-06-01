P = [1 -3.55 5.1 -3.1];
x = linspace(-10, 10);
P_vals = polyval(P,x);
plot(x, P_vals); 
grid on