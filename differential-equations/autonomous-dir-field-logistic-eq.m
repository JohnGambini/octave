# autonomous-dir-field-logistic-eq.m
#
# Copyright 2015 2016 2017 2018 by John Gambini
#
clear all; clc; clear all;

function xdot = f(x,y)
  xdot = y.*(2-y);
endfunction

f1 = inline('y.*(2-y)','x','y');
#f2 = @(x) 2 ./ (2+ e.^(-2.*x)); 
#f2 = @(x) 1./((1/2)+e.^(-2*x)); %the logistic equation (sort of)

xvals = linspace(-1,4,21);
yvals = linspace(-1,3,21);

slopefield("f",xvals,yvals);

hold on;

[x,y] = ode45("f",xvals,0.01);
plot(x,y,'linewidth',2,'b');




