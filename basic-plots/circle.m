# circle.m
#
# Copyright 2015 2016 2017 2018 by John Gambini
#
clear all; clc; close all;

x = linspace(0, 2*pi, 4);
plot(cos(x), sin(x));

hold on;

x = linspace(0, 2*pi, 7);
plot(cos(x), sin(x));

x = linspace(0, 2*pi, 9);
plot(cos(x), sin(x));

x = linspace(0, 2*pi, 97);
plot(cos(x), sin(x));

axis equal;

hold off;

