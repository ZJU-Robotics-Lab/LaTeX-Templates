clear;clc;
sys = tf([1 10], [1 60]);
sysd1 = c2d(sys, 1, 'foh');
sysd2 = c2d(sys, 1, 'tustin');
sysd3 = c2d(sys, 1, 'prewarp', 2.4);
sysd4 = c2d(sys, 1, 'matched');
bode(sys); hold on; %Continuous
dbode([1 9], [1 59], 1); hold on; %Forward Difference
dbode([11 -1], [61 -1], 1); hold on; %Backward Difference
bode(sysd1); hold on; %FOH
bode(sysd2); hold on; %Tustin's Approximation
bode(sysd3); hold on; %Frequency Prewarping
bode(sysd4); hold on; %Matched Pole-Zero
set( findobj('Type', 'line'), 'linewidth', 2.5 ); 
legend('Continuous', 'Forward Difference', 'Backward Difference', ...
    'FOH','Tustin''s Approximation', 'Frequency Prewarping',...
    'Matched Pole-Zero'); %Show labels