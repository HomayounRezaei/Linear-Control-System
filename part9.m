clc;
clear;
close all;

numerator = [-0.0699 0 24.5004];
denominator = [1 24.0559 206.2820 0.0029 -132.4021];

sys = tf(numerator, denominator);
numeratorld = [1 0.84];
denominatorld = [1 2.14];
num1=24.3385.*numeratorld;
Gld=tf(num1,denominatorld);


systotal=series(Gld,sys);
rlocus(systotal);

