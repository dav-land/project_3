%function to put ODE into matrix and then use ode45 to solve

function dx = ODEmat411(t, x)
a = .831; %initial Conditions
b = .0162;
c = .2824;
d = .0211;
M = 0.02;
w = (2*pi)/12;
dx = zeros(2, 1);% create matrix to keep track of solution
dx(1) = -a*x(1) + b*x(1).*x(2);%the first derivative of x1
dx(2) = c*x(2) - d*x(1).*x(2)+M*x(2)*sin(w*t);%the first derivative of x2

end
