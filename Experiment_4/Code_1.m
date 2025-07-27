% Estimate the path loss using Hata Model and plot distance Vs. Path loss.
% Use the following values:
% i. Frequency of operation f1 = 700 MHz, f2 = 900 MHz
% ii. hte = 30m, hre = 1.5m
% iii. Distance = 1:2:20 km
% iv. Consider urban (medium and large city), sub-urban and rural.

clc
clear all
close all
f = 700; % Freq of operation, 1
ht = 30; % height of transmitting antenna
d = 1:2:20; % Distance vector (1 km to 20 km with a step of 2 km)
d_meters = d * 1000; % kilometers to meters
hr = 1.5; % Height of the receiving antenna (in meters)
% alpha
a_hr = (1.1*log10(f) - 0.7)*hr - (1.56*log10(f) - 0.8);
if f > 300
 a_hr_1 = (8.29*log10(1.54*hr))^2-1.1;
else
 a_hr_1 = (3.2*log10(11.75*hr))^2-4.97;
end
path_loss_urban_medium = 69.55 + 26.16*log10(f) - 13.82*log10(ht) - a_hr + (44.9 -
6.55*log10(ht))*log10(d_meters);
path_loss_urban_large = 69.55 + 26.16*log10(f) - 13.82*log10(ht) - a_hr_1 + (44.9
- 6.55*log10(ht))*log10(d_meters);
path_loss_suburban = 69.55 + 26.16*log10(f) - 13.82*log10(ht) - a_hr + (44.9 -
6.55*log10(ht))*log10(d_meters) - 2*(log10(f/28))^2 - 5.4;
path_loss_rural = 69.55 + 26.16*log10(f) - 13.82*log10(ht) - a_hr + (44.9 -
6.55*log10(ht))*log10(d_meters) - 4.78*(log10(f))^2 + 18.33*log10(f) - 40.94;

% Plotting
figure;
plot(d, path_loss_urban_medium, '-d', 'DisplayName', 'Urban Medium 700MHz',
'LineWidth', 2, 'Color', 'red');
hold on
plot(d, path_loss_urban_large, '-o', 'DisplayName', 'Urban Large 700MHz',
'LineWidth', 2, 'Color', 'blue');
plot(d, path_loss_suburban, '-x', 'DisplayName', 'Suburban 700MHz' ,'LineWidth',
2, 'Color', 'magenta');
plot(d, path_loss_rural, '-s', 'DisplayName', 'Rural 700MHz', 'LineWidth', 2,
'Color', 'green');
grid on;
% Labels and title
xlabel('Distance (km)');
ylabel('Path Loss (dB)');
title('Path Loss vs Distance using Hata Model');
legend('Location', 'southeast');
set(gca,'FontWeight','bold','FontSize',20);
disp("f = 700 MHz");
disp("Urban Medium:");
disp(path_loss_urban_medium);
disp("Urban Large:");
disp(path_loss_urban_large);
disp("Suburban:");
disp(path_loss_suburban);
disp("Rural:");
disp(path_loss_rural);
f = 900; %Freq of operation, 2
%alpha recalculation
a_hr = (1.1*log10(f) - 0.7)*hr - (1.56*log10(f) - 0.8);
if f > 300
 a_hr_1 = (8.29*log10(1.54*hr))^2-1.1;
else
 a_hr_1 = (3.2*log10(11.75*hr))^2-4.97;
end
path_loss_urban_medium = 69.55 + 26.16*log10(f) - 13.82*log10(ht) - a_hr + (44.9 -
6.55*log10(ht))*log10(d_meters);
path_loss_urban_large = 69.55 + 26.16*log10(f) - 13.82*log10(ht) - a_hr_1 + (44.9
- 6.55*log10(ht))*log10(d_meters);
path_loss_suburban = 69.55 + 26.16*log10(f) - 13.82*log10(ht) - a_hr + (44.9 -
6.55*log10(ht))*log10(d_meters) - 2*(log10(f/28))^2 - 5.4;
path_loss_rural = 69.55 + 26.16*log10(f) - 13.82*log10(ht) - a_hr + (44.9 -
6.55*log10(ht))*log10(d_meters) - 4.78*(log10(f))^2 + 18.33*log10(f) - 40.94;

% Plotting
figure;
plot(d, path_loss_urban_medium, '-d', 'DisplayName', 'Urban Medium 900MHz',
'LineWidth', 2, 'Color', 'red');
hold on;
plot(d, path_loss_urban_large, '-o', 'DisplayName', 'Urban Large 900MHz',
'LineWidth', 2, 'Color', 'blue');
plot(d, path_loss_suburban, '-x', 'DisplayName', 'Suburban 900MHz' ,'LineWidth',
2, 'Color', 'magenta');
plot(d, path_loss_rural, '-s', 'DisplayName', 'Rural 900MHz', 'LineWidth', 2,
'Color', 'green');
grid on;
% Labels and title
xlabel('Distance (km)');
ylabel('Path Loss (dB)');
title('Path Loss vs Distance using Hata Model');
legend('Location', 'southeast');
set(gca,'FontWeight','bold','FontSize',20);
disp("f = 900 MHz");
disp("Urban Medium:");
disp(path_loss_urban_medium);
disp("Urban Large:");
disp(path_loss_urban_large);
disp("Suburban:");
disp(path_loss_suburban);
disp("Rural:");
disp(path_loss_rural);
