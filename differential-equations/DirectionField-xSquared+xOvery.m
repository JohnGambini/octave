#
# DirectionField-xSquared+xOvery.m
#
# Copyright 2015 2016 2017 2018 by John Gambini
#
close all; clc; clear all;

function xdot = f(x,y)
  xdot = x.^2 + y ./ x;
endfunction

f2 = inline('x.^3 ./ 2 - x');
f3 = inline('x.^3/2');
f4 = inline('x.^3/2 + x');

xvals = yvals = [-4.0:0.5:4.0];

slopefield("f", xvals, yvals);

hold on

x = y = [-4.0:0.25:4.0];

plot(x, f2(x), "r", "linewidth", 2 );
plot(x, f3(x), "b", "linewidth", 2 );
plot(x, f4(x), "g", "linewidth", 2 );

plot(-4:0.2:4,0, "linewidth", 2 );
plot(-4:0.2:4,(-4:0.2:4), "linewidth", 2 );

hold off


