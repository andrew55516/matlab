a_1=input('a_1= ');
b_1=input('b_1= ');
func = @(x) 1./(a_1.*cos(x) + b_1.*sin(x)).^2;

N=100; 
L1=0; 
L2=2*pi/3; 
X=linspace(L1,L2,N);
Y=func(X);

plot(X,Y); 
grid on;
xlabel('x'); 
ylabel('f(x)'); 

xr=ginput(2);
[xx,yy]=fminbnd(func,xr(1,1),xr(2,1));
hold on
plot(xx,yy,'r*',xr(1,1),xr(1,2),'g*',xr(2,1),xr(2,2),'g*')
hold off