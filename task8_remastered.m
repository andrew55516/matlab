n = input('n = ');
m = rand(n);
disp(m);
P = poly(m);
disp(P);
P_vals = polyval(P, m);
disp(P_vals);
if nnz(P_vals) == 0
    disp('������� �������� ������ ��������');
else
    disp('������� �� �������� ������ ��������');
end