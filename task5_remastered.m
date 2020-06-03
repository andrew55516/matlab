
disp('1) ');
P_1 = [1, 0, 0];
P_2 = poly([1, -2, -3]);
[r, s, k] = residue(P_1, P_2);
disp(r)
disp(s)

disp('2) ');
P_1 = [1, 3];
P_2 = [1, i, -i];
[r, s, k] = residue(P_1, P_2);
disp(r)
disp(s)


disp('3) ');
P_1 = [1, 0, 0];
P_2 = [1, 0, 0, 0, -1];
[r, s, k] = residue(P_1, P_2);
disp(r)
disp(s)
