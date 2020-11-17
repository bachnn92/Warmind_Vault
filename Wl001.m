clf
clc
clear all

axis equal;
axis ([-10 10 -10 10]);
hold on

syms t
x = (1-t)*sin(100*t);
y = (1-t)*cos(100*t);
z = sqrt(1 - x^2 - y^2);
fplot3(x, y, z, [0 1])
title('Symbolic 3-D Parametric Line')

% for n=0:0.01:5
%  %f = ezplot(n*cos(1*u)+(5-n)*cos(-6*u),n*sin(1*u)+(5-n)*sin(-6*u),[0 2*pi])
%  ezplot(f,[1 2])
%  set(f,'color',[1 0 0])
%  pause(0.05)
%  delete(f);
% end