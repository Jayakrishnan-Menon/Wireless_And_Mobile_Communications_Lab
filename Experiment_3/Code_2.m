% Estimate the received power and the corresponding path loss using Two-ray Model. Also plot: 
%     i. Distance Vs. Received power and
%     ii. Distance Vs. Path loss

% Use the following values:
%     i. Frequency of operation = 900 MHz
%     ii. Transmit Power = 10W
%     iii. Gain of the transmitting antenna = 5 dB
%     iv. Gain of the receiving antenna = 3 dB
%     v. ht=40 m, hr = 3 m;
%     vi. Distance d = 100:100:2000 m

clc
clear all
close all
frequency = 900 * 1e6; 
Pt = 10;
Gt = 10^(5 / 10); 
Gr = 10^(3 / 10);
ht = 40;
hr = 3;
d = 100:100:2000;
c = 3e8; 
lambda = c / frequency;
Pr = (Pt * Gt * Gr * ht.^2 *hr.^2) ./ ((d).^4);
PL = 40 * log10(d)-(10*log(Gt)+10*log(Gr)+20*log(ht)+20*log(hr)); 
figure;
subplot(2,1,1);
plot(d, Pr, 'b-', 'LineWidth', 3, 'Marker','x');
set(gca,'FontSize',20,'FontWeight','bold');
xlabel('Distance (m)');
ylabel('Received Power (W)');
title('Distance vs Received Power (2-Ray)');
grid on;
subplot(2,1,2);
plot(d, PL, 'r-', 'LineWidth', 3, 'Marker','x');
set(gca,'FontSize',20,'FontWeight','bold');
xlabel('Distance (m)');
ylabel('Path Loss (dB)');
title('Distance vs Path Loss (2-Ray)');
grid on;
