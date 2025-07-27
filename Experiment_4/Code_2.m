% Estimate the path loss using Hata Model and plot Transmitting antenna height Vs. Path loss
% Use the following values:
% i. Frequency of operation f = 700 MHz
% ii. hre = 1.5m
% iii. Distance d1= 5 km, d2 = 10km, d3 = 20km
% iv. hte = 10:10:100 m
% v. Consider urban environment

clc
clear all
close all
f = 700;
hr = 1.5;
d = [5, 10, 20];
d_meters = d * 1000;
ht = 10:10:100;
path_loss_d1 = zeros(size(ht));
path_loss_d2 = zeros(size(ht));
path_loss_d3 = zeros(size(ht));
for i = 1:length(ht)
 a_hr = (1.1*log10(f) - 0.7)*hr - (1.56*log10(f) - 0.8);
 path_loss_d1(i) = 69.55 + 26.16*log10(f) - 13.82*log10(ht(i)) - a_hr + (44.9 -
6.55*log10(ht(i)))*log10(d_meters(1));
 path_loss_d2(i) = 69.55 + 26.16*log10(f) - 13.82*log10(ht(i)) - a_hr + (44.9 -
6.55*log10(ht(i)))*log10(d_meters(2));
 path_loss_d3(i) = 69.55 + 26.16*log10(f) - 13.82*log10(ht(i)) - a_hr + (44.9 -
6.55*log10(ht(i)))*log10(d_meters(3));
end
figure;
plot(ht, path_loss_d1, '-o', 'DisplayName', '5 km with freq 700 MHz', 'LineWidth',
2, 'Color', 'red');
hold on;
plot(ht, path_loss_d2, '-x', 'DisplayName', '10 km with freq 700 MHz',
'LineWidth', 2, 'Color', 'green');
plot(ht, path_loss_d3, '-s', 'DisplayName', '20 km with freq 700 MHz',
'LineWidth', 2, 'Color', 'blue');
grid on;
xlabel('Transmitting Antenna Height (m)');
ylabel('Path Loss (dB)');
title('Path Loss vs Transmitting Antenna Height using Hata Model (Urban)');
legend('Location', 'northeast');
set(gca,'FontWeight','bold','FontSize',20);
disp("Freq = 700 MHz");
disp("Distance = 5 km");
disp(path_loss_d1);
disp("Distance = 10 km");
disp(path_loss_d2);
disp("Distance = 20 km");
disp(path_loss_d2);
f = 900;
for i = 1:length(ht)
 a_hr = (1.1*log10(f) - 0.7)*hr - (1.56*log10(f) - 0.8);
 path_loss_d1(i) = 69.55 + 26.16*log10(f) - 13.82*log10(ht(i)) - a_hr + (44.9 -
6.55*log10(ht(i)))*log10(d_meters(1));
 path_loss_d2(i) = 69.55 + 26.16*log10(f) - 13.82*log10(ht(i)) - a_hr + (44.9 -
6.55*log10(ht(i)))*log10(d_meters(2));
 path_loss_d3(i) = 69.55 + 26.16*log10(f) - 13.82*log10(ht(i)) - a_hr + (44.9 -
6.55*log10(ht(i)))*log10(d_meters(3));
end
figure;
plot(ht, path_loss_d1, '-o', 'DisplayName', '5 km with freq 900 MHz', 'LineWidth',
2, 'Color', 'red');
hold on;
plot(ht, path_loss_d2, '-x', 'DisplayName', '10 km with freq 900 MHz',
'LineWidth', 2, 'Color', 'green');
plot(ht, path_loss_d3, '-s', 'DisplayName', '20 km with freq 900 MHz',
'LineWidth', 2, 'Color', 'blue');
grid on;
xlabel('Transmitting Antenna Height (m)');
ylabel('Path Loss (dB)');
title('Path Loss vs Transmitting Antenna Height using Hata Model (Urban)');
legend('Location', 'northeast');
set(gca,'FontWeight','bold','FontSize',20);
disp("Freq = 900 MHz");
disp("Distance = 5 km");
disp(path_loss_d1);
disp("Distance = 10 km");
disp(path_loss_d2);
disp("Distance = 20 km");
disp(path_loss_d2);
