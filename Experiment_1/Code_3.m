% Plot the graph of Cell Radius vs Capacity, for the following values:
% i.Total Bandwidth = 1800 MHz; Channel bandwidth = 200 kHz.
% ii.Cell radius = 100:100:1000 m
% iii.N=3, 4, 7, 9, 12
% iv.Total area = 2100 km2

clc
clear all
r=100:100:1000;
Total_BW=1800*1000000;
channel_BW=50*1000;
N=[1,3, 4, 7, 9, 12];
Total_Area=2100;
for i=1:6
Cluster_Area=2.6*r.^2;
M=Total_Area./(Cluster_Area);
S=N(i)*(Total_BW./channel_BW);
C=M*S;
plot(r,C,'linewidth',5);
legend("N=1","N=3","N=4","N=7","N=9","N=12")
xlabel("Radius in metres",'FontSize',20,'FontWeight','bold')
ylabel("Capacity in
Bits/sec",'FontSize',20,'FontWeight','bold');
set(gca,'FontSize',20,'FontWeight','bold');
grid on;
hold on;
end
hold off;
