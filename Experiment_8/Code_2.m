% Rician

clc;
clear;
close all;
N = 1e6;
EbN0_dB = 0:2:20;
K_dB = 10;
K = 10^(K_dB/10);
data = randi([0 1], 1, N);
bpsk_symbols = 2*data - 1;
ber_rician = zeros(1, length(EbN0_dB));
for i = 1:length(EbN0_dB)
EbN0 = 10^(EbN0_dB(i)/10);
noise_variance = 1 / (2 * EbN0);
rician_fading = sqrt(K / (K + 1)) + sqrt(1 / (K + 1)) * (randn(1, N) + 1i *
randn(1, N)) / sqrt(2);
received_signal = rician_fading .* bpsk_symbols + sqrt(noise_variance) * (randn(1,
N) + 1i * randn(1, N));
equalized_signal = real(received_signal ./ rician_fading);
detected_data = equalized_signal > 0;
ber_rician(i) = sum(detected_data ~= data) / N;
end
EbN0_linear = 10.^(EbN0_dB/10);
ber_rician_theory = 0.5 * exp(-K * EbN0_linear ./ (EbN0_linear + K + 1));
figure;
semilogy(EbN0_dB, ber_rician, 'o-', 'LineWidth', 5, 'MarkerSize', 8);
hold on;
semilogy(EbN0_dB, ber_rician_theory, 'r-', 'LineWidth', 5);
set(gca, 'FontSize', 14, 'FontWeight', 'bold');
xlabel('Eb/N0 (dB)', 'FontSize', 14, 'FontWeight', 'bold');
ylabel('Bit Error Rate (BER)', 'FontSize', 14, 'FontWeight', 'bold');
title(['BER of BPSK over Rician Fading Channel (K = ', num2str(K_dB), ' dB)'],
'FontSize', 14, 'FontWeight', 'bold');
legend({'Simulated BPSK over Rician', 'Theoretical BPSK over Rician'}, 'Location',
'NorthEast', 'FontSize', 12, 'FontWeight', 'bold');
set(gca,'FontSize',20,'LineWidth',4,'FontWeight','bold');
grid on;
