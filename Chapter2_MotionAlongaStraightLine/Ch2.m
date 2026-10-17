% acceleration d2x/dt2
% acceleration 
% Without Symbolic Math toolbox
% a = dv/dt
% dv = a dt
% tic
clc
clear all
a = 5; % acceleration
dt = 0.000001; % time step
t1 = 0; % initial time
t2 = 10; % final time
v = 0; % initial velocity

% Loop to calculate velocity
for t = t1:dt:t2
    v = v + a * dt;
end

% Output velocity
disp(['Velocity at t = ', num2str(t2), ' is ', num2str(v)]);

% toc

% With Symbolic Math toolbox
syms v(t) a(t) t
a(t) = 5;
v(t) = int(a(t), t); % Corrected integral
v_at_10 = v(10); % Evaluate at t = 10

% Position Calculation
syms x(t)
x(t) = int(v(t), t);
x_at_10 = x(10); % Evaluate at t = 10

% Output results
disp(['Velocity at t = 10: ', string(vpa(v_at_10))]);
disp(['Position at t = 10: ', string(vpa(x_at_10))]);
% toc