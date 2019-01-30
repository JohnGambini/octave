# direction-field-w-integral-curves.m
#
# Copyright 2015 2016 2017 2018 by John Gambini
#
close all; clc; clear all;

function xdot = f(x,y)
  xdot = y-x.^2;
endfunction

x = y = linspace(-4,4,25);

slopefield("f", x, y);

hold on;

xvals = yvals = linspace(-4,4,45);

[X1,Y1] = meshgrid(xvals,yvals);
DY = f(X1,Y1);

#contour( xvals, yvals, DY, [-6 -4 -2 0 2 4 6], "linewidth", 3);

y_0 = 9.95;
[x,y] = ode45("f",xvals,y_0);
plot(x,y, "linewidth",2); 

y_0 = 9.975;
[x,y] = ode45("f",xvals,y_0);
plot(x,y, "linewidth",2); 

y_0 = 9.985;
[x,y] = ode45("f",xvals,y_0);
plot(x,y, "linewidth",2); 

hold off;

%print -dpng y-x2.png