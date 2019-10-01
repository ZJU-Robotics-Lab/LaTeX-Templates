clear;clc;
num = [1 10.3614 9.758 0.8353];
den = [1 -3.7123 5.1644 -3.195 0.7408];
rlocus(num, den)
v = [-25 5 -15 15];axis(v)
set( findobj('Type', 'line'), 'linewidth', 2.5 ); 
