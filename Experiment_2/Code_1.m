% Find the call handover probability for the following specifications and plot it
% against varying speed of mobile:
% i. Cell radius = 500m
% ii. Average holding time = 3 min
% iii. Speed of the mobile 5:5:50 km/hr

clc
clear all
R = input("Radius in metres: ");
H = input("Avg Hold Time in minutes: ");
S = input("Speed in kilometer/hour: ");
radius = R; %metres
AvgHoldTime = H*60; %minutes converted to seconds
Speed = linspace((0*0.278),(S*0.278),10); %5 to 50 km/hr
converted to metre/second (Speed Array)
u = 1/AvgHoldTime; %inverse of Holding time
n = 2*Speed/(pi*radius); %value
Handover_Probability = n./(n+u); %Handover Probability Array
plot(Speed./0.278,
Handover_Probability,'LineWidth',5,'color','r','Marker','o');
hold on;
plot(Speed,
Handover_Probability,'LineWidth',5,'color','b','Marker','o');
grid on;
title("Call Handover Probability Vs Speed of Mobile");
legend('for speed in kms/hr','for speed in
m/s','Location','southeast')
xlabel("Speed of Mobile");
ylabel("Handover Probability");
set(gca,'FontSize',20,'FontWeight','bold');
