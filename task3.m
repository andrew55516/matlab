%%a) 
a = input('a = ')

xmin = input('xmin = ')
xmax = input('xmax = ')
dx = input('dx = ')

x = [xmin:dx:xmax]
y = [xmin:dx:xmax]

[X, Y] = meshgrid(x, y)
Z = a*X.*exp(-X.^2 - Y.^2)
surf(X,Y,Z)

title('a) ')
xlabel('x')
ylabel('y')
zlabel('z')

%%g)
a = input('a= ')
b = input('b= ')

u=(0:0.01*pi:2*pi)';
v= -pi/2:0.01*pi:pi/2;

X=a.*cos(u).*cos(v);
Y=a.*sin(u).*cos(v);
Z=b.*sin(v).*ones(size(u));

mesh(X,Y,Z);

title('g) ')
xlabel('x')
ylabel('y')
zlabel('z')

%%i)
b = input('b = ')

rmin = input('rmin = ')
rmax = input('rmax = ')
dr = input('dr = ')

r = [rmin:dr:rmax]
beta = linspace(0,2*pi,length(r))
[r, beta] = meshgrid(r, beta)


X = r.*cos(beta)
Y = r.*sin(beta)
Z = b./r

surfc(X, Y, Z)

title('i) ')
xlabel('x')
ylabel('y')
zlabel('z')