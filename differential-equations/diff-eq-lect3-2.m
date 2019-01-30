# diff-eq-lect3-2.m
#
# Copyright 2015 2016 2017 2018 by John Gambini
#
close all; clc; clear all;

function xdot = f(x,y)
  xdot = (2*x) ./(1+cos(x)) + (sin(x)*y) / (1+cos(x));
endfunction

f2 = inline('(x.^2-6) ./ (1+cos(x))');
f3 = inline('(x.^2-4) ./ (1+cos(x))');
f4 = inline('(x.^2-2) ./ (1+cos(x))');
f5 = inline('(x.^2) ./ (1+cos(x))');
f6 = inline('(x.^2+2) ./ (1+cos(x))');

x = [-4:0.5:4];
y = x;

slopefield("f", x, y);

x = [-4:0.0625:4];

hold on;

plot(x, f2(x),"linewidth",2);
plot(x, f3(x),"linewidth",2);
plot(x, f4(x),"linewidth",2);
plot(x, f5(x),"linewidth",2);
plot(x, f6(x),"linewidth",2);

hold off;

print dpng diff-eq-lect3-2.png