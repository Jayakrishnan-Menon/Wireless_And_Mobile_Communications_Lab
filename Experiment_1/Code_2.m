% Plot the graph of Channel bandwidth Vs Capacity, for the following values:
% i.Get total bandwidth from the user. Let the range of input be 20MHz to
% 100MHz.
% ii.Let the total area = 2000 sq.km; area of a cell=2 sq.km
% iii.Channel bandwidth = 20:20:200 kHz
% iv.N=3, 4, 7, 9, 12

c = (20:20:200);
b = input("enter the bandwidth: ");
b*1000000;
n = [3,4,7,9,12];
a = input("enter the area: ");
a;
ca = input("enter area of cell: ");
ca;
for i=1:length(n)
K =(b./c)*n(i);
no_of_cluster = (a/2);
capacity = K *no_of_cluster;
plot(capacity,'LineWidth',5);
xlabel("Channel BW in MHz",'FontSize',20,'FontWeight','bold');
ylabel("Capacity in
bits/sec",'FontSize',20,'FontWeight','bold');
legend('N=3','N=4','N=5','N=7','N=9','N=12');
set(gca,'FontSize',20,'FontWeight','bold');
grid on;
hold on;
end
