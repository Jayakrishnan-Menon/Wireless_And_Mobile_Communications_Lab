% Plot handover probability Vs. cell radius for the following:
% i.Speed of the mobile = 60 km/hr
% ii.Average holding time = 3 min
% iii.Cell radius = 100:100:1000 m.

clc
clear all
R = input("Radius in metres: ");
H = input("Avg Hold Time in minutes: ");
S = input("Speed in kilometer/hour: ");
radius = linspace(0,R,10); %metres
AvgHoldTime = 3*H; %minutes converted to seconds
Speed = S*0.278; %60 km/hr converted to metre/second (Speed
Array)
u = 1/AvgHoldTime; %inverse of Holding time
n = 2*Speed./(pi*radius); %value
Handover_Probability = n./(n+u); %Handover Probability Array
plot(radius,
Handover_Probability,'LineWidth',5,'color','b','Marker','o');
grid on;
title("Call Handover Probability Vs Radius of Cell");
xlabel("Radius of Cell in Metres");
ylabel("Handover Probability");
set(gca,'FontSize',20,'FontWeight','bold');
