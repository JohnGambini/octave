#
# DirectionField-1+x-y.m
#
# Copyright 2015 2016 2017 2018 by John Gambini
#
close all; clc; clear all;

function xdot = f(x,y)
  xdot = 1+x-y;
endfunction

f2 = @(X,Y)sqrt(Y^2+X^2);
g = inline('t.*y.^2','t','y');
f = @(t,y)t.*y^2;

xvals = yvals = linspace(-2,2,21);

slopefield("f", xvals, yvals);

hold on;

x = y = linspace(-2,2,41);

[X1,Y1] = meshgrid(x,y);
DY = f(X1,Y1);
  
#contour(x,y,DY,[-1,-0.5,0.5,1],"linewidth", 3);

[t,y] = ode45("f", x, 2 );
plot(t, y, "linewidth", 2 );

[t,y] = ode45("f", x, 0 );
plot(t,y, "linewidth", 2 );

[t,y] = ode45("f", x, -4 );
plot(t,y, "linewidth", 2 );




