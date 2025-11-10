% Derivative of a Function
%Set up an x-array from 0 to 10 with an increment of 0.01
x = 0:0.01:10;
y = 5*x.^2.*exp(-0.2*x).*sin(x);
% Find the central difference estimate of the derivative
n = length(x);
der = (y(3:n)-y(1:n-2))./(x(3:n)-x(1:n-2));
% Plot the original function
subplot(2,1,1)
plot(x,y)
grid on
xlabel("x")
ylabel("y")
title('Original function')
subplot(2,1,2)
plot(x(2:n-1),der,Color='r')
grid on
title('Derivative of the function')
xlabel("x")
ylabel("y")
