clc;
clear;
close all;

numerator = [-0.0699 0 24.5004];
denominator = [1 24.0559 206.2820 0.0029 -132.4021];

sys = tf(numerator, denominator);
rlocus(sys);
