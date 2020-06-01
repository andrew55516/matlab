X = linspace(-10, 10, 1000);
params = [[1, 1]; [2,3]; [4,5]; [30, 50]];
func = @(x, alpha, beta) ((x.^alpha) .* (exp(-beta.*x)));

Y = func(X, params(:,1), params(:,2));


for ind = 1:size(params, 1)
    hold on
    plot(X,Y(ind,:));
    hold off
    alpha = params(ind,1);
    beta = params(ind,2);
    T = ['Alpha=',num2str(alpha),',', 'Beta=',num2str(beta)];
    title(T);
    n_func = @(x) (func(x, alpha, beta));
    [x_m,y_m]=fminbnd(n_func,-10,10);
    hold on
    plot(x_m,y_m,'r*');
    hold off
end 

xlabel('x'); 
ylabel('f(x)');
