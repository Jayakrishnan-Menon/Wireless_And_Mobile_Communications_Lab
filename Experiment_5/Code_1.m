% Estimate the path loss using Log Normal Shadowing Model and plot distance Vs. Path loss.
% Use the following values:
%     i. Reference distance do = 500m
%     ii. Frequency of operation f = 900 MHz
%     iii. N = 3
% Find free space path loss (PLFS). Using PLFS, find path loss for log-normal model. 
% Generate random normal variable ‘Xm’. Plot the log-normal shadowing path loss vs distance, where d = 1 to 20 km, varying in steps of 2 km.

clc
clear all;
close all;
d0= 0.5;
f=900e6;
n=3;
d=1:2:20;
PLFS= 20*log10(d0)+20*log10(f)-147.56;
X=randn(size(d));
PL= PLFS + 10 * n .* log10(d/d0) + X;
figure(1)
plot(d,PL,'LineWidth',4,'Marker','diamond','color','#7700ff')
title('Log normal path loss vs distance','FontSize',20,'LineWidth',4,'FontWeight','bold');
xlabel('Distance(KM)','FontSize',20,'LineWidth',4,'FontWeight','bold');
ylabel('Path Loss(dB)','FontSize',20,'LineWidth',4,'FontWeight','bold');
set(gca,'FontSize',20,'LineWidth',4,'FontWeight','bold');
grid on
