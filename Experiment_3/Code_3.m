% C. Consider any one distance value and compare the path loss estimated using both the models.

clc
clear all
close all
f = 900*10^6;
pt = 10;
gt = 10^(0.5);
gr = 10^(0.3);
lamda = (3*10^8)/f;
pi = 3.14159;
L = 1;
ht = 40;
hr = 3;
d = 100:10:2000;
for i=1:length(d)
    pr(i) = (pt*gt*gr*((lamda^2)/(((4*pi)^2)*L)))./(d(i)^2);
    pr1(i) = (pt*gt*gr*((ht^2)*(hr^2)))/(d(i)^4);
end
pl = 10*log10(pt./pr);
pl1 = 10*log10(pt./pr1);
figure;
plot(d,pl1,'Color','#008568', 'LineWidth', 3);
hold on;
plot(d,pl,'Color','#F90046', 'LineWidth', 3);
hold off;
title('Comparing Path Loss Using Both models');
legend('2-Ray Model','Free Space Model','Location','SouthEast');
xlabel('Distance (m)','FontWeight','Bold');
ylabel('Path Loss (dB)','FontWeight','Bold');
set(gca,'FontSize',20,'FontWeight','bold');
grid on;
