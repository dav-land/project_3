%function to put ODE into matrix and then use ode45 to solve

function dx = ODEmat(t, x)
a = .831; 
b = .0162;
c = .2824;
d = .0211;
dx = zeros(2, 1);% create matrix to keep track of solution
dx(1) = -a*x(1) + b*x(1).*x(2);
dx(2) = c*x(2) - d*x(1).*x(2);

end
