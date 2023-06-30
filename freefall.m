clc, clearvars

mass = input("Object mass in kilograms:");%Mass in kg
height = input("Height of the object when dropped(in meters):");%Height in meters
g = 9.8066;%G-Force on earth(according to https://en.wikipedia.org/wiki/G-force)

%Equations source: https://www.angio.net/personal/climb/speed.html
t = @(h) sqrt((2*h)/9.8066);%Time until impact(in seconds)
v = @(h) sqrt(2*9.8066*h);%Velocity on impact(in meters/second)
e = @(h, m) m * g * h;%Energy upon impact(in joules)

time = t(height);
velocity = v(height);
energy = e(height, mass);
disp("Time until impact(in seconds):")
disp(time)
disp("Velocity at impact(meters/second):")
disp(velocity)
disp("Energy upon impact(in joules):")
disp(energy)
