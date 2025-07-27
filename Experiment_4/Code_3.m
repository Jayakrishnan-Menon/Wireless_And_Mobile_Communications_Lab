% Compare the path loss estimated using Two-ray and Hata Models.
% Use the following values:
% i. Frequency of operation f = 900 MHz
% ii. hte = 30m, hre = 1.5m
% iii. Distance = 1:1:10 km
% iv. Consider urban environment

clc
clear all
close all
f = 900;
ht = 30;
hr = 1.5;
d = 1:1:10;
d_meters = d * 1000;
% Hata Model Path Loss Calculation (Urban)
a_hr = (1.1*log10(f) - 0.7)*hr - (1.56*log10(f) - 0.8);
path_loss_hata = 69.55 + 26.16*log10(f) - 13.82*log10(ht) - a_hr + (44.9 -
6.55*log10(ht))*log10(d_meters);
% Two-Ray Model Path Loss Calculation
c = 3e8;
lambda = c / (f * 1e6);
path_loss_two_ray = (4 * pi * ht * hr * d_meters / lambda).^2;
path_loss_two_ray_dB = 10 * log10(path_loss_two_ray);
figure;
plot(d, path_loss_hata, '-o', 'DisplayName', 'Hata Model', 'LineWidth', 2,
'Color','blue');
hold on;
plot(d, path_loss_two_ray_dB, '-x', 'DisplayName', 'Two-Ray Model', 'LineWidth',
2, 'Color','red');
grid on;
xlabel('Distance (km)');
ylabel('Path Loss (dB)');
title('Path Loss Comparison between Hata Model and Two-Ray Model');
legend('Location', 'northwest');
set(gca,'FontSize',20,'FontWeight','bold');
