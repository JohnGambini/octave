#
# dirfield-example.m
#
# Copyright 2015 2016 2017 2018 by John Gambini
#
close all; clc; clear all;

function xdot = f1(t,y)
  xdot = y;
endfunction

tval = linspace(-4,2,31);
yval = linspace(-2,2,31);

slopefield("f1", tval, yval)

hold on;

[x,y] = ode45("f1",tval,0.02);
plot(x,y,'linewidth',2);

[x,y] = ode45("f1",tval,-0.02);
plot(x,y,'linewidth',2);

print -dpng dirfield-example.png