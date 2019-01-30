#
# y-x^2.m
#
# Copyright 2015 2016 2017 2018 by John Gambini
#
close all; clc; clear all;

function xdot = f1(t,y)
  xdot = y-t.^2;
endfunction

tval = yval = linspace(-4,4,21);

slopefield("f1", tval, yval);

hold on;

tval = linspace(-4,4,71);

[x,y] = ode45("f1",tval,9.9850);
plot(x,y,'linewidth',2,'b');

[x,y] = ode45("f1",tval,9.9800);
plot(x,y,'linewidth',2,'b');

[x,y] = ode45("f1",tval,9.9710);
plot(x,y,'linewidth',2,'b');

#print -dpng y-x2.png