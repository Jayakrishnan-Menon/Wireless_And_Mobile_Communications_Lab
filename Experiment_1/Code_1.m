% Find the capacity improvement in a cellular system when frequency reuse is
% applied. Compare the result without frequency reuse. Use the following
% parameters:
% i. Total bandwidth = 30MHz
% ii. Channel bandwidth = 50kHz
% iii. Let the total area = 2000 sq.km; area of a cell=2 sq.km
% iv. Single Cell covering the entire area
% v. N=5

clc
clear all
close all
B=30*1000000; b=50*1000;
N = input ("Enter the value of N:");
Area = input ("Enter the geographical area to be covered:");
cluster_size=N;
no_of_channel=(B/b);
if(N~=1)
 no_of_cluster=(Area)/N;
else
 N=1;
 no_of_cluster=1;
end
Total_no_of_channel=no_of_cluster*no_of_channel;
capacity=Total_no_of_channel;
fprintf('no_of_ch=%d.\n',no_of_channel);
fprintf('cluster_size=%d.\n',cluster_size);
fprintf('Total_no_of_channel=%d.\n',Total_no_of_channel);
fprintf('Channel capacity=%d.\n',capacity);
