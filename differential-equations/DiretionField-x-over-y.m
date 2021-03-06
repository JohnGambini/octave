#
# DirectionField-x-over-y.m
#
# Copyright 2015 2016 2017 2018 by John Gambini
#
close all; clc; clear all;

function xdot = f(x,y)
  xdot = x./y;
endfunction

#f1 = inline('1+x-y','x','y');
%g = inline('t.*y.^2','t','y');
%f = @(t,y) -y^2+t;

slopefield("f", -4:0.5:4, -4:0.5:4);
#plot(-4:0.2:4,-(-4:0.2:4), "linewidth", 2 );
#plot(-4:0.2:4,0, "linewidth", 2 );
#plot(-4:0.2:4,(-4:0.2:4), "linewidth", 2 );



