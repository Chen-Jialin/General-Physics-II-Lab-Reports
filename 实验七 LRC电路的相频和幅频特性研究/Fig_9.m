clc
clear
hold off
R_1 = 10;
R_2 = 2;
R_3 = 20;
R_L = 0;
L = 0.1 * 10^(-3);
C = 0.047 * 10^(-6);
omega = 0:1000:5000000;
y_1 = (R_1 + R_L) ./ ((R_1 + R_L)^2 + (omega .* L - 1 ./ (omega .* C)).^2).^0.5;
y_2 = (R_2 + R_L) ./ ((R_2 + R_L)^2 + (omega .* L - 1 ./ (omega .* C)).^2).^0.5;
y_3 = (R_3 + R_L) ./ ((R_3 + R_L)^2 + (omega .* L - 1 ./ (omega .* C)).^2).^0.5;
%plot([0,0],[-2000000,5000000],'k--')
%plot([-5000000,20000000],[0,0],'k--')
plot(omega,y_1,'k-')
hold on
grid on
%axis equal
title 'Í¼9 (R + R_L)/((R + R_L)^2 + (\omega * L - 1 / (\omega * C))^2)^{0.5}-\omega¹ØÏµÇúÏß(L = 0.1mH,C = 0.047\mu F)'
xlabel \omega/Hz
ylabel '(R + R_L) / sqrt((R + R_L)^2 + (\omega * L - 1 / (\omega * C))^2)'
plot(omega,y_2,'k--')
plot(omega,y_3,'k-.')
text(600000,0.12,'R = 2\Omega','FontSize',18)
text(1250000,0.12,'R = 10\Omega','FontSize',18)
text(2100000,0.12,'R = 20\Omega','FontSize',18)