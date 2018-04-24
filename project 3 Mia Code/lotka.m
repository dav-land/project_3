%function to put ODE into matrix and then use ode45 to solve

function xprime = lotka(t, x)
a = .831; % parameters set
b = .0162;
c = .2824;
d = .0211;
xprime = zeros(2, 1);% create matrix to keep track of solution
xprime(1) = -a*x(1) + b*x(1).*x(2);
xprime(2) = c*x(2) - d*x(1).*x(2);

end
