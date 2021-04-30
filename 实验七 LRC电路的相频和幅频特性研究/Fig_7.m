clc
clear
hold off
L = 1 * 10^(-3);
C = 0.047 * 10^(-6);
omega = 1000:1000:20000000;
X_LC = (omega .* L - 1 ./ (omega .* C)).^2;
plot([0,0],[-200000000,500000000],'k--')
hold on
grid on
axis equal
title '图7 感抗与容抗之矢量和的平方随信号源输出频率变化曲线((\omega * L - 1 / (\omega * C))^2-\omega关系曲线)(L = 1mH,C = 0.047\mu F)'
xlabel '\omega/Hz'
ylabel '(\omega * L - 1 / (\omega * C))^2/\Omega'
plot([-5000000,200000000],[0,0],'k--')
plot(omega,X_LC,'k-')