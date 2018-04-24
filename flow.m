close all; clear all; 
% Set the axis limits
x1min = -5; x1max = 5; x2min = -5; x2max = 5;
%set step size for x1 and x2;
x1step = 1; x2step = 1; 
%generate mesh for plotting
[x1, x2] = meshgrid(x1min:1:x2max, x2min:1:x2max);

%set parameter values 
a = 0.831;
b = 0.0162;
c = 0.2824;
d = 0.0211;

% Define the system of equations 
%for this example we consider the equation 
%           dx1/dt = a*x2
%           dx2/dt = -x1

dx1 = -a*x1 + b*x1*x2;  
dx2 = c*x2 - d*x1*x2; 

%normalize vectors (to help plotting)
dx1 = dx1./sqrt(dx1.^2 + dx2.^2); 
dx2 = dx2./sqrt(dx1.^2 + dx2.^2); 
% Generate the vector field

quiver(x1, x2, dx1,dx2,'AutoScaleFactor',0.5)

%change axes limits, add labels
axis([x1min x1max x2min x2max])
xlabel('$x_1$','Interpreter','latex')
ylabel('$x_2$','Interpreter','latex')


