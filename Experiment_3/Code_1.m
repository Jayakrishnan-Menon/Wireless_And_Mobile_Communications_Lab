% Estimate the received power and the corresponding path loss using Free Space Propagation Model. Also plot: 
%     i. Distance Vs. Received power and
%    ii. Distance Vs. Path loss

% Use the following values:
%     i. Frequency of operation = 900 MHz
%     ii. Transmit Power = 10W
%     iii. Gain of the transmitting antenna = 5 dB
%     iv. Gain of the receiving antenna = 3 dB
%     v. Assume the system loss factor L = 1
%     vi. Distance d = 100:100:2000 m
%     vii. Cell radius = 500m

clc
clear all
close all
frequency = 900 * 1e6; 
Pt = 10;
Gt = 10^(5 / 10); 
Gr = 10^(3 / 10);
ht = 40;
hr = 3;
L = 1;
d = 100:100:2000;
c = 3e8; 
lambda = c / frequency;
Pr = (Pt * Gt * Gr * (lambda.^2)) ./ ((4 * pi * d).^2 * L);
PL = 10 * log10(Pt ./ Pr); 
figure;
subplot(2,1,1);
plot(d, Pr, 'b-', 'LineWidth', 3, 'Marker','x');
set(gca,'FontSize',20,'FontWeight','bold');
xlabel('Distance (m)');
ylabel('Received Power (W)');
title('Distance vs Received Power (Free Space)');
grid on;
subplot(2,1,2);
plot(d, PL, 'r-', 'LineWidth', 3, 'Marker','x');
set(gca,'FontSize',20,'FontWeight','bold');
xlabel('Distance (m)');
ylabel('Path Loss (dB)');
title('Distance vs Path Loss (Free Space)');
grid on;
