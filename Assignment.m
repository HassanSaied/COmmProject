input_signal = audioread('output.wav');
input_signal_slice = input_signal(1000000:1001200);
m = input_signal_slice;
energy = (sum(m.^2))/(size(m)(1));
SNR = 0 : 1 : 20;
sigma = sqrt(energy ./ (10.^(SNR./10)));
ModulationIndex = 0.8;
A = ModulationIndex/max(abs(m));
plot(SNR,detect_coherent(m,sigma),'-r',SNR,detect_non_coherent(m,sigma,A),'-b');
xlabel('SNR');
ylabel('MSE')
legend('Coherent Detection','Non Coherent Detection');

disp('Power Efficiency =' );
power = sum(m.^2) / size(m)(1);

efficiency = (power / (power + (A.^2))) * 100;
disp(efficiency);