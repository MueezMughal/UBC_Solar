% Constants
M1 = 300;       % Sprung mass (kg)
K1 = 80000;     % Suspension spring (N/m)
K2 = 500000;    % Tire stiffness (N/m)
b1 = 350;       % Suspension damping (Ns/m)
b2 = 0;         % Tire damping (often assumed 0)

% Frequency range
w = logspace(0, 2.5, 500);  % rad/s

% Unsprung mass values to test
M2_vals = [20 30 50 70 100];

% Create figure
figure;
hold on; grid on;

for M2 = M2_vals
    % Numerator and Denominator in terms of jω
    s = 1i*w;

    % Transfer function: X1(s)/W(s)
    num = (b1*s + K1) .* (b2*s + K2);
    den = (M1*s.^2 + b1*s + K1) .* (M2*s.^2 + (b1 + b2)*s + (K1 + K2)) - (b1*s + K1).^2;

    H = num ./ den;

    % Plot magnitude in dB
    semilogx(w, 20*log10(abs(H)), 'DisplayName', ['M2 = ' num2str(M2) ' kg']);
end

xlabel('Frequency (rad/s)');
ylabel('Magnitude (dB)');
title('Magnitude Response of X1(s)/W(s) for Varying M2');
legend show;
