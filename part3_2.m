tspan = [0 5];
y0 = [0; 0; 0; 0];

[t, Y] = ode45(@(t, Y) myode(t, Y), tspan, y0);

figure;
plot(t, Y(:,1), 'g', t, Y(:,2), 'r', t, Y(:,3), 'b', t, Y(:,4), 'y');
legend('y1', 'y2', 'y3', 'y4');
title('Step Input Response for State Variables');
xlabel('Time (t)');
ylabel('State Variables');
grid on;

function dYdt = myode(t, Y)
    y1 = Y(1);
    y2 = Y(2);
    y3 = Y(3);
    y4 = Y(4);

    m = 0.27;
    r = 0.02;
    b = 1;
    k = 0.001;
    l = 0.49;
    jw = 1.5 * 9.35e-2;
    jb = 4.32e-5;
    g = 9.81;

    u = 0.1;

    dy1dt = y2;
    dy2dt = (m * g * r^2 * sin(y3)) / (jb + m * r^2) - ((m * r^3 + jb * r) * ((u * l * cos(y3) + m * g * y1 * cos(y3) - m * r * y1 * y4^2 - m * g * r * sin(y3) - k * l^2 * y3 - (2 * m * y1 * y2 + b * l^2) * y4)) / ((jb + m * r^2) * (m * y1^2 + jw - m * r^2))) + (m * r^2 * y1 * y4^2) / (jb + m * r^2);
    dy3dt = y4;
    dy4dt = ((u * l * cos(y3) + m * g * y1 * cos(y3) - m * r * y1 * y4^2 - m * g * r * sin(y3) - k * l^2 * y3 - (2 * m * y1 * y2 + b * l^2) * y4)) / (m * y1^2 + jw - m * r^2);

    dYdt = [dy1dt; dy2dt; dy3dt; dy4dt];
end
