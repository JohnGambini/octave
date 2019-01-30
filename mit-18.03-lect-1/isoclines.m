# isoclines.m
#
# Copyright 2015 2016 2017 2018 by John Gambini
#
close all; clc; clear all;

function xdot = f1(x,y)
  xdot = y-x.^2;
endfunction

x = y = linspace(-4,4,45);

[X1,Y1] = meshgrid(x,y);
DY = f1(X1,Y1);

hold on;

contour( x, y, DY, [-3 -3] , "linewidth", 2);

x = y = linspace(-4,4,35);

slopefield("f1",x,y);

hold off;






