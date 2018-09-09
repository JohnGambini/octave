#
# DirectionField.m
#
# Copyright 2015 2016 2017 2018 by John Gambini
#
f1 = inline('-x/y','x','y');
%g = inline('t.*y.^2','t','y');
%f = @(t,y) -y^2+t;
hold on

dirfield(f1, -4:0.5:4, -4:0.5:4);
plot(-4:0.2:4,-(-4:0.2:4), "linewidth", 2 );
plot(-4:0.2:4,0, "linewidth", 2 );
plot(-4:0.2:4,(-4:0.2:4), "linewidth", 2 );

hold off


