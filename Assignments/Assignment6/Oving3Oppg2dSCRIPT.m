K_lambda = 1.8;

L = tf(omega_n*omega_n*K_lambda,[tau 1 2*zeta*omega_n omega_n*omega_n 0]);
T = tf(L/(1+L));
%step(T);

theta_r = 0;

save("C:\Users\crezl\Google Drive\NTNU\4. SEMESTER\TTK4105 - REGTEK\OVINGER\Oving6\Oving6Oppg2Variables");