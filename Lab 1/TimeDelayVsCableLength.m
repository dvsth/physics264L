%create the arrays to store
%time delay and corresponding errror
%for our speed of light measurements
cable_length = [2.988,8.988,18.988,28.988,38.988,48.988];
length_error = [5e-4,5e-4,5e-4,5e-4,5e-4,5e-4];
time_delay = [21.5e-9,47e-9,95e-9,149e-9,195e-9,250e-9];
time_error = [0.2e-9,1e-9,1e-9,1e-9,2e-9,2e-9];

%for line of best fit
p = polyfit(cable_length, time_delay, 1);
x = 0:0.1:60;
m = p(1);
c = p(2);
y = m*x + c;
slope = 1/m;
%do the plotting
figure
hold all
txt = {'Speed of light','(inverse slope of line of best fit): ' slope ' m/s'};
text(50,1,txt, 'FontSize', 30)
title('Plot of time delay as a function of cable length')
xlabel('effective cable length in meters')
ylabel('time delay in seconds')
errorbar(cable_length,time_delay,time_error,time_error,length_error,length_error, 'r.')
plot(x,y,'b--')
legend('measured values', 'line of best fit')


hold off