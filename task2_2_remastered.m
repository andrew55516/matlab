X = linspace(-100, 100, 1000);
params = [[1, 1]; [2,3]; [4,5]; [6, 8]];
func = @(x, alpha, beta) ((x.^alpha) .* (exp(-beta.*x)));

for i = 1:length(params)
    Y = @(x) (func(x, params(i,1), params(i,2)));
    [xx, yy] = fminbnd(Y, -10, 10);
    F = Y(X);
    plot(X, F, xx, yy, 'r*')
    ylim([-10^10 10^10])
    hold on
end
    

