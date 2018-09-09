#
# diff-eq-1.m
#
# Copyright 2015 2016 2017 2018 by John Gambini
#
t = linspace(0,20,100);
function x_prime = f(x,t);
x_prime = t/x;
endfunction

x_0 = 2;

y = lsode("f", x_0, t)
