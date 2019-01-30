close all; clc; clear all;

function xdot = f1(t,y)
  xdot = y;
endfunction

f2 = inline('-y.^2+t','t','y');

#f = @(t,y) -y^2+t;

tval = -3:.2:3;
yval = -2:.2:2;

slopefield("f1", tval, -2:.2:2)

hold on;

[x,y] = ode45("f1",tval,0.01);
plot(x,y,'linewidth',2);

[x,y] = ode45("f1",tval,-0.01);
plot(x,y,'linewidth',2);