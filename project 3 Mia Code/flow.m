close all; clear all; 
% Set the axis limits
x1min = 0; x1max = 23; x2min = 0; x2max = 65; %check best limits
%set step size for x1 and x2;
x1step = 6; x2step = 10; 
%generate mesh for plotting
[x1, x2] = meshgrid(x1min:1:x2max, x2min:1:x2max);

%set parameter values 
a = .831; 
b = .0162;
c = .2824;
d = .0211;

% Define the system of equations 
%for this example we consider the equation 
%           dx1/dt = a*x2
%           dx2/dt = -x1

dx1 = -a*x1 + b*x1.*x2;  
dx2 = c*x2 - d*x1.*x2; 

%normalize vectors (to help plotting)
dx1 = dx1./sqrt(dx1.^2 + dx2.^2); 
dx2 = dx2./sqrt(dx1.^2 + dx2.^2); 
% Generate the vector field
%this is below now
% plot Nullclines:
nullxmin = -10; nullxmax = 20; nullymin = -10; nullymax =  65;
nullx0min = -10; nullx0max = 20;
nullx = a/b;
nullx0 = 0;
nully = c/d;
nully0 = 0;
y = nullymin:1:nullymax;
%plot EQ points '-o'
hold on
plot(0, 0, '-o')
plot(c/d, a/b, '-o')
fplot(nullx)
fplot(nullx0)
plot(nully*ones(1,size(y,2)), y, 'LineWidth', 1)
plot(nully0*ones(1,size(y,2)), y, 'LineWidth', 1)

% plot(X, ones(size(X))*(c/d))
quiver(x1, x2, dx1,dx2,'AutoScaleFactor',0.5)
legend('Equilibria 1', 'Equilibria 2', 'v - null: a/b', 'v - null: 0', 'h - null: c/d', 'h - null: 0', 'Direction Field' )
%change axes limits, add labels
axis([x1min x1max x2min x2max])
xlabel('$x_1$','Interpreter','latex')
ylabel('$x_2$','Interpreter','latex')
title('Direction Field of Lotka-Volterra Model')
hold off


