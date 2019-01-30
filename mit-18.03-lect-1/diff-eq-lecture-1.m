# diff-eq-lecture-1.m
#
# Copyright 2015 2016 2017 2018 by John Gambini
#
clear all; clc; close all;

function xdot = f(x,y)
  xdot = y-x.^2;
endfunction

xvals = yvals = linspace(-4,4,25);

slopefield("f", xvals, yvals);

hold on;

xvals = yvals = linspace(-4,4,45);

[X1,Y1] = meshgrid(xvals,yvals);
DY = f(X1,Y1);

contour( xvals, yvals, DY, [-6 -4 -2 0 2 4 6], "linewidth", 3);

%x = y = linspace(-4,4,50);

%y_0 = 9.95;
%y = lsode(f2,y_0,x);
%plot(x,y, "linewidth",2); 

%y_0 = 9.975;
%y = lsode(f2,y_0,x);
%plot(x,y, "linewidth",2); 

%y_0 = 9.985;
%y = lsode(f2,y_0,x);
%plot(x,y, "linewidth",2); 

hold off;

%print -dpng y-x2.png