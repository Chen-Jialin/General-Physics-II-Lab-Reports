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
title 'ͼ7 �п����ݿ�֮ʸ���͵�ƽ�����ź�Դ���Ƶ�ʱ仯����((\omega * L - 1 / (\omega * C))^2-\omega��ϵ����)(L = 1mH,C = 0.047\mu F)'
xlabel '\omega/Hz'
ylabel '(\omega * L - 1 / (\omega * C))^2/\Omega'
plot([-5000000,200000000],[0,0],'k--')
plot(omega,X_LC,'k-')