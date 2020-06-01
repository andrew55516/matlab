a = input('a = ')
b = input('b = ')
c = input('c = ')
d = input('d = ')

xmin = input('xmin = ')
xmax = input('xmax = ')
dx = input('dx = ')
ymin = input('ymin = ')
ymax = input('ymax = ')
dy = input('dy = ')

x = [xmin:dx:xmax]
y = [ymin:dx:ymax]

[X, Y] = meshgrid(x, y)
Z = -(a*X + b*Y + d)/c

figure
surfc(X, Y, Z)

xlabel('x')
ylabel('y')
zlabel('z')
