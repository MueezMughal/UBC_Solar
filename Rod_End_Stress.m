%% Rod End Stress Calcs
clear, close, clc

% Parameters
input_force_out = [663.1; -5263.86]; % (x,z) [N]
theta = 262.82 * pi/180; % angle of shank axis to x-axis
A = [cos(theta) sin(theta); -sin(theta) cos(theta)]; % Transformation matrix to rod end axis where u is shank axis
d = 0.5000; % [in]
At = 0.1600; % [in^2]
dr = 0.4350; % [in]
stress_cap = 16200 / At; % [lbs/in^2]
input_force_out = input_force_out * 0.2248089431; %[N] -> [lbs]
% Loading on tilted rod end
uv_force = A * input_force_out;

stress_out = uv_force(1) / At + 32 * (uv_force(2) * d) / (pi * dr^3);

SF_out = stress_cap / (stress_out * 3); 

disp(abs(SF_out)); 
