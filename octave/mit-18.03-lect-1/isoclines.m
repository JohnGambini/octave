# isoclines.m
#
# Copyright 2015 2016 2017 2018 by John Gambini
#
f1 = inline('y-x.^2','x','y');
f2 = @(y,x)y-x.^2;
f3 = inline('x.^2 + c', 'x', 'c');

x = y = linspace(-4,4,45);

[X1,Y1] = meshgrid(x,y);
DY = f1(X1,Y1);

hold on;

contour( x, y, DY, [-3 -3] , "linewidth", 2);

x = -4:.5:4;
c = [-3 3];

y = f3(x,-4);

dirfield(f1,x,y);

hold off;






