% Use the following values:
%     i. Reference distance do = 500m
%     ii. Frequency of operation f = 900 MHz
%     iii. d = 5km
% Find free space path loss (PLFS). Using PLFS, find path loss for log-normal model. Generate random normal variable ‘Xm’. 
%Plot the log-normal shadowing path loss vs loss exponent, where n = 2 to 4, varying in steps of 0.2.

clc
clear all;
close all;
d0= 0.5;
f=900e6;
PLFS= 20*log10(d0)+20*log10(f)-147.56;
d=5;
n=2:0.2:4;
X1=randn(size(n));
PL1= PLFS + 10 .* n .* log10(d/d0) + X1;
plot(n,PL1,'LineWidth',4,'Marker','diamond','color','#7700ff')
title('Log normal path loss vs Path Loss Exponent','FontSize',20,'LineWidth',4,'FontWeight','bold');
xlabel('Path loss exponent','FontSize',20,'LineWidth',4,'FontWeight','bold');
ylabel('Path Loss(dB)','FontSize',20,'LineWidth',4,'FontWeight','bold');
set(gca,'FontSize',20,'LineWidth',4,'FontWeight','bold');
grid on
