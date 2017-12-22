function [MSE] = detect_non_coherent (m, sigma)
ModulationIndex = 0.8;
A = ModulationIndex/max(abs(m));
alpha = pi/4;
zI = randn(size(m)) * sigma;
zQ = randn(size(m)) * sigma;
rI = (A+m).* cos(alpha)+zI;
rQ = (A+m) .* sin(alpha) + zQ;
r_non_coherent_with_dc = sqrt(rI.^2 + rQ.^2);
r_non_coherent = r_non_coherent_with_dc - mean(r_non_coherent_with_dc);
MSE = sum((r_non_coherent-m).^2)/length(m);
end
