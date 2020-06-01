%%a)
a = input('a = ')

xmin = input('xmin = ')
xmax = input('xmax = ')
dx = input('dx = ')
ymin = input('ymin = ')
ymax = input('ymax = ')
dy = input('dy = ')

x = [xmin:dx:xmax]
y = [ymin:dx:ymax]

[X, Y] = meshgrid(x, y)
Z = a*sin((X.^2 + Y.^2).^0.5)./((X.^2 + Y.^2).^0.5)
plot3(X,Y,Z)

title('a) ')
xlabel('x')
ylabel('y')
zlabel('z')

%%á)
xmin = input('xmin = ')
xmax = input('xmax = ')
dx = input('dx = ')
ymin = input('ymin = ')
ymax = input('ymax = ')
dy = input('dy = ')

x = [xmin:dx:xmax]
y = [ymin:dx:ymax]

[X, Y] = meshgrid(x, y)
Z = -X.*sin(X) - Y.*sin(Y)
mesh(X,Y,Z)

title('á) ')
xlabel('x')
ylabel('y')
zlabel('z')
