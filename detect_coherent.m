function [MSE] = detect_coherent (m, sigma)
z_coherent = randn(size(m)) * sigma;
r_coherent = m + z_coherent;
MSE = sum((r_coherent-m).^2)/length(m);
end
