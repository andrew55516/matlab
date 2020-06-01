n = input('n = ');
m = rand(n);
disp(m);
m_eig = eig(m);
P = poly(m_eig);
disp(P);
P_vals = polyval(P, m);
if nnz(P_vals) == 0
    disp('Матрица является корнем полинома');
else
    disp('Матрица не является корнем полинома');
end