#
# diff-eq-1.m
#
# Copyright 2015 2016 2017 2018 by John Gambini
#
close all; clc; clear all;

t = linspace(0.001,100,21);

function x_prime = f(x,t);
  x_prime = t./x;
endfunction

slopefield("f",t,t);

hold on;

[x,y] = ode45("f", t, 0.001 );
plot(x,y,'linewidth',3,'b');

