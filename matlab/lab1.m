#--------------------Equations and Matrix---------------


A= [38 -22 -55; -22 193 55; -55 55 98;];
T= transpose(A);
Z = inv(A);
[X,Y] = eig(A);


M= [1 2 4; 1 4 3; 1 -2 4;];
N = [8; 2; 3;];
S= inv(M) * N;


W = [1 6 -1 -30];
roots(W);


s1 = [1 0 -1];
s2 = [1 0 1 -1];
[Quo,Rem] = deconv(s2,s1)

#------------Integration-----------------

syms x
int(exp(-2*x)*sin(4*x),x,pi,0)


#-----------Differentiation--------------

syms y
diff(sin(pi*y),5)

#-----------Binominal Expansion----------

syms p,q
expand((p+q)^7)


F=rand(1,5)
bar(F)

#-------------Convex Hull----------------

x=rand(1,12)
y=rand(1,12)
K= convhull(x,y);
plot(x,y,'d','markersize',12)
xlabel('Longitude')
ylabel('Latitude')
hold on
plot(x(K),y(K),'r')

#---------------------------

t=[0 2 2 4 6 7];
y=[0 3 5 5 2 0];
plot(t,y,'rd','markersize',30)
hold on
plot(t,y)
xlabel('X')
ylabel('Y')
title('Pulse in time domain')
grid on


plot(t,y,d--)//for doted line


#--------Sinusodial Wave Plot---------

t=0:0.02:pi;
y=2*sin(3*pi*t+pi/3);
plot(t,y)
xlabel('X')
ylabel('Y')
title('Sinusodial Wave')
grid on


t=0:0.02:pi;
y=2*sin(3*pi*t+pi/3);
stem(t,y)   //discrete Plot
xlabel('X')
ylabel('Y')
title('Sinusodial Wave')


#--------Three Sinusodial Wave Plot----------

t=0:0.02:pi/4;
x=2*sin(3*pi*t);
y=2*sin(3*pi*t+2*pi/3);
z=2*sin(3*pi*t+4*pi/3);
plot(t,x,'--r>',t,y,'--b*',t,z,':md')
xlabel('X')
ylabel('Y')
title('Sinusodial Waves')
legend('x','y','z')
grid on

#-------------MeshGrid---------------------------

[X,Y]= meshgrid(-8:0.5:8);
f=X.^2+Y.^2+eps;
mesh(f)
surf(f)

#----------------Shortest Path on Graph---------------

s=[1 1 1 2 2 6 6 7 7 3 3 9 9 4 4 11 11 8];
t=[2 3 4 5 6 7 8 5 8 9 10 5 10 11 12 10 12 12];
weights=[10 10 10 10 10 1 1 1 1 1 1 1 1 1 1 1 1 1];
G=graph(s,t,weights);
plot(G,'EdgeLabel',G.Edges.Weight)
[P,d] = shortestpath(G,3,8)
