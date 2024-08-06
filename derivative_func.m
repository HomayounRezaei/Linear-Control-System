clc;
clear;
close all;

m = 0.27;
r = 0.02;
b = 1;
k = 0.001;
l = 0.49;
jw = 1.5 * 9.35e-2;
jb = 4.32e-5;
g = 9.81;

syms y1 y2 y3 y4 u
f = ((u * l * cos(y3) + m * g * y1 * cos(y3) - m * r * y1 * y4^2 - m * g * r * sin(y3) - k * l^2 * y3 - (2 * m * y1 * y2 + b * l^2) * y4)) / (m * y1^2 + jw - m * r^2);

dy1 = diff(f, y1);
dy2 = diff(f, y2);
dy3 = diff(f, y3);
dy4 = diff(f, y4);

dy1_at_zero = double(subs(dy1, {y1, y2, y3, y4, u}, {0, 0, 0, 0, 0}));
dy2_at_zero = double(subs(dy2, {y1, y2, y3, y4, u}, {0, 0, 0, 0, 0}));
dy3_at_zero = double(subs(dy3, {y1, y2, y3, y4, u}, {0, 0, 0, 0, 0}));
dy4_at_zero = double(subs(dy4, {y1, y2, y3, y4, u}, {0, 0, 0, 0, 0}));

disp('The partial derivative of f with respect to y1 evaluated at zero is:');
disp(dy1_at_zero);
disp('The partial derivative of f with respect to y2 evaluated at zero is:');
disp(dy2_at_zero);
disp('The partial derivative of f with respect to y3 evaluated at zero is:');
disp(dy3_at_zero);
disp('The partial derivative of f with respect to y4 evaluated at zero is:');
disp(dy4_at_zero);