%% 
%APPM 2360 Project 3 
%Ethan Burkley(Section 251), Davis Landry(Section 213), Max Morgan(Section244)
close all; clear all;
%% ODE eq and plotting question 2
[t, x] = ode45(@ODEmat, [0, 50], [10, 40]);%solves using ode45
%plots the different data out
figure 
plot(t, x(:,1))
hold on
xlabel("time $(t)$",'Interpreter','latex')
ylabel("$x(t)$",'Interpreter','latex')
title("Function behavior over time, x1(t) and x2(t)")
plot(t, x(:,2))
legend('x_1', 'x_2')
hold off
figure
hold on
xlabel('$x_1$','Interpreter','latex')
ylabel('$x_2$','Interpreter','latex')
title("Parametric curve of solutions for x1 and x2 (0, 50)")
plot(x(:,1),x(:,2))
hold off

%% ODE for question 3.1.3
[t, x] = ode45(@ODEmat313, [0, 200], [10, 40]);%solves using ode45
%plots the different data out
figure 
plot(t, x(:,1))
hold on
xlabel("time (t)")
ylabel("x(t)")
title("Function behavior over time,k=0.001, x1(t) and x2(t)")
plot(t, x(:,2))
legend("x1", "x2")
hold off
figure
hold on
xlabel('$x_1$','Interpreter','latex')
ylabel('$x_2$','Interpreter','latex')
title("Parametric curve of solutions for x1 and x2 (0, 50), k = 0.001")
plot(x(:,1),x(:,2))
hold off
%% ode for question 3.1.4
[t, x] = ode45(@ODEmat314, [0, 200], [10, 40]);%solves using ode45
%plots the different data out
figure 
plot(t, x(:,1))
hold on
xlabel("time (t)")
ylabel("x(t)")
title("Function behavior over time,k=0.02, x1(t) and x2(t)")
plot(t, x(:,2))
legend("x1", "x2")
hold off
figure
hold on
xlabel('$x_1$','Interpreter','latex')
ylabel('$x_2$','Interpreter','latex')
title("Parametric curve of solutions for x1 and x2 (0, 50), k=0.02")
plot(x(:,1),x(:,2))
hold off