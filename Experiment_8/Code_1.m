% Rayleigh 

clc;
clear;
close all;
% Simulation parameters
N = 1e6; % Number of symbols
EbN0_dB = 0:2:20; % SNR range in dB
% Generate random binary data `1q
data = randi([0 1], 1, N);
% BPSK Modulation
bpsk_symbols = 2*data - 1; % BPSK: 0 -> -1, 1 -> 1
% Initialize BER arrays
ber_bpsk = zeros(1, length(EbN0_dB));
for i = 1:length(EbN0_dB)
 % Convert SNR from dB to linear scale
 EbN0 = 10^(EbN0_dB(i)/10);
 noise_variance = 1 / (2 * EbN0);
 % Rayleigh fading (envelope)
 rayleigh_fading = (randn(1, N) + 1i*randn(1, N)) / sqrt(2);
 % Received signal with Rayleigh fading and AWGN
 received_signal = rayleigh_fading .* bpsk_symbols + sqrt(noise_variance) *
(randn(1, N) + 1i*randn(1, N));
 % Equalization (coherent detection)
 equalized_signal = real(received_signal ./ rayleigh_fading);
 % BPSK Demodulation
 detected_data = equalized_signal > 0;
  % BER Calculation
 ber_bpsk(i) = sum(detected_data ~= data) / N;
end
% Theoretical BER for BPSK over Rayleigh fading
EbN0_linear = 10.^(EbN0_dB/10);
ber_bpsk_theory = 0.5 .* (1 - sqrt(EbN0_linear ./ (EbN0_linear + 1)));
% Plotting
figure;
semilogy(EbN0_dB, ber_bpsk, 'o-', 'LineWidth', 5);
hold on;
semilogy(EbN0_dB, ber_bpsk_theory, 'r-', 'LineWidth', 5);
xlabel('Eb/N0 (dB)');
ylabel('Bit Error Rate (BER)');
title('BER of BPSK over Rayleigh Fading Channel');
legend('Simulated BPSK over Rayleigh', 'Theoretical BPSK over Rayleigh');
set(gca,'FontSize',20,'LineWidth',4,'FontWeight','bold');
grid on;
