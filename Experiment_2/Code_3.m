% Plot distance between co-channel cells Vs. SIR. Use the following values:
% i.D = 500:100:2000m
% ii.R = 5km
% iii.n = 2, 4
% iv.N= 5,7

clc
clear all
close all
D=500:100:2000;
R=5000;
n1=2;
n2=4;
%N=5,7;
SIR1=((D./R).^(n1))/6;
SIR2=((D./R).^(n2))/6;
plot(D,SIR1,'LineWidth',5,'color','b','Marker','diamond');
hold on
plot(D,SIR2,'LineWidth',5,'color','r','Marker','square');
grid on;
title("Distance between co-channel cells VS SIR");
xlabel("Distance in metres");
ylabel("Signal to Interference Ratio");
legend('for n=2','for n=4','Location','northwest');
set(gca,'FontSize',20,'FontWeight','bold');
