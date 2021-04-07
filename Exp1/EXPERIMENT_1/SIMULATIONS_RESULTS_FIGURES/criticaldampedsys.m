
% critically damped system %
num = [9];
den = [1 6 9];
sys =tf(num,den)
step(sys, 0:0.1:8);
title('step response of critically damped system');
stepinfo(sys)
figure(1)
% overdamped system %
num = [9];
den = [1 12 9];
sys = tf(num,den)
step(sys, 0:0.1:8);
title('step response of overdamped system');
stepinfo(sys)

