% running script
close all; clear all;
[t, x] = ode45(@lotka, [0, 50], [10, 40]);% set time from 0 to 50 and range of x

figure 
plot(t, x(:,1))
hold on
xlabel("time (t)")
ylabel("function x(t)")
title("Function behavior over time of DiffEQ solutions, x1(t) and x2(t)")
plot(t, x(:,2))
legend("x1", "x2")
hold off
figure
hold on
xlabel("x1")
ylabel("x2")
title("Parametric curve of solutions for x1 and x2 over time (0, 50)")
plot(x(:,1),x(:,2))
hold off

