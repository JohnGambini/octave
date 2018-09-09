#
# DirectionField-1+x-y.m
#
# Copyright 2015 2016 2017 2018 by John Gambini
#
f1 = inline('y-x.^2','x','y'); 
f2 = @(X,Y)sqrt(Y^2+X^2);
g = inline('t.*y.^2','t','y');
f = @(t,y)t.*y^2;

x = y = [-2:0.25:2];

hold on;

dirfield(f1, x, y);

x = y = [-2:0.25:2];

[X1,Y1] = meshgrid(x,y);
DY = f1(X1,Y1);
  
contour(x,y,DY,[-1 0 1],"linewidth", 3);


z = lsode("g",2, x );

plot(x, z, "linewidth", 2 );
%plot(-4:0.2:4,0, "linewidth", 2 );
%plot(-4:0.2:4,(-4:0.2:4), "linewidth", 2 );

hold off


