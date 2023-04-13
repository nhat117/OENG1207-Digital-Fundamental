% OENG1207 Digital Fundamenta
% Author : Nhat Bui(s3878174), Binh Nguyen(s3979462), Thao Trinh (s3979297)
% This assignment is our team own original work
%% Lab 1 Part 1
clc, clearvars, close all, format long % Clear command windows, variable and close all matlab windows
% Display program information
display('OENG1207 Digital Fundamental')
display('Author : Nhat Bui(s3878174), Binh Nguyen(s3979462), Thao Trinh (s3979297)')
display('Lab 1 Part 1')
d = 183; %metters
theta_deg = 45;
theta_rad = deg2rad(theta_deg); %rad;
g = 9.8; %m/s^2;
v0_ms = sqrt((d * g) / sin(2 * theta_rad)); % the unit is in m/s;
v0_kmh = convvel(v0_ms, 'm/s', 'km/h');
fprintf('The initial velocity is %.3f km/h \n', v0_kmh);

%% Lab 1 Part 2
clc, clearvars, close all  % Clear command windows, variable and close all matlab windows
% Display program information
display('OENG1207 Digital Fundamental')
display('Lab 1 Part 2')
display('Author : Nhat Bui(s3878174), Binh Nguyen(s3979462), Thao Trinh (s3979297)')
g = 9.8; % Gravitational velocity in m/s^2
theta_deg = [35, 45, 55]; % Degrees, define a vector of different angles
%  at theta = 45 maximum velocity equal 125km/h2
% Theta 45 is second element in the theta_rad vector
x_min = 183; % Narrowest disstance at the canyon
v0_max = 125; % Maximum velocity in km/h

% Calculate the time to reach the canyon
v0_max = convvel(v0_max, 'km/h', 'm/s'); % Convert to m/s
theta_rad = deg2rad(theta_deg); % Convert to Radians
t_req = x_min / (v0_max * cos(theta_rad(2))); % Required time to travel through the canyon
h_initial = 0.5 * g * (t_req ^ 2) - v0_max * t_req * sin(theta_rad(2));
fprintf('Angle theta = 45 deg \n')
fprintf('The required time travel is %.3f s\n', t_req)
fprintf('The initial height is %.3f m \n', h_initial)

% Compute the trajectory for different angles
step = 0.01; % Time step (explain more) because 2 decimal digit 
t_end = 8.42 + 0.1; % t_max to reach the land from 3 launching angle
t = 0:step:t_end; % Time vector 
x = v0_max * cos(theta_rad)' * t; % Formular to calculate x
y = h_initial + v0_max .* t .* sin(theta_rad)' - 0.5 * g * (t .^ 2); % Formular to calculate the y value base on h_inital , vo_max

% Plot the trajectory
figure(1)
% Plot all of the three line
 i =1;
 plot(x(i, :), y(i, :)) % Access the first angle
 hold on %Keep the line on the same plot
 i = 2; % Plot the second angle
 plot(x(i, :), y(i, :))
 hold on % Keep the line on the same plot
 i = 3; % Plot the third angle
 plot(x(i, :), y(i, :))
 hold on % Keep the line on the same plot
 

% Plot configuration
legend('35 degree', '45 degree', '55 degree');
axis([0 210 0 140]); % define the range for the axis, use positive range only
title('Height vs Displacement respective to time for different launching angle'); % title name for the graph
xlabel('x-displacement in meters'); % label name for x axis
ylabel('y-height in meters'); % label name for y axis
