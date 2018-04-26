%% 
%APPM 2360 Project 3 
%Ethan Burkley(Section 251), Davis Landry(Section 213), Max Morgan(Section244)

%% ODE eq and plotting
[t, x] = ode45(@ODEmat, [0, 50], [10, 40]);%solves using ode45
%plots the different data out
figure 
plot(t, x(:,1))
hold on
xlabel("time (t)")
ylabel("x(t)")
title("Function behavior over time, x1(t) and x2(t)")
plot(t, x(:,2))
legend("x1", "x2")
hold off
figure
hold on
xlabel("x1")
ylabel("x2")
title("Parametric curve of solutions for x1 and x2 (0, 50)")
plot(x(:,1),x(:,2))
hold off
