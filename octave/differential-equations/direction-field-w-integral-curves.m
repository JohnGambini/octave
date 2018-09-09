# direction-field-w-integral-curves.m
#
# Copyright 2015 2016 2017 2018 by John Gambini
#
f1 = inline('y-x.^2','x','y');
f2 = @(y,x)y-x.^2;
x = y = linspace(-4,4,25);

hold on;

dirfield(f1, x, y);

x = y = linspace(-4,4,45);


[X1,Y1] = meshgrid(x,y);
DY = f1(X1,Y1);

contour( x, y, DY, [-10 -8 -6 -4 -2 0 2 4 6 8 10], "linewidth", 3);

%x = y = linspace(-4,4,50);

%y_0 = 9.95;
%y = lsode(f2,y_0,x);
%plot(x,y, "linewidth",2); 

%y_0 = 9.975;
%y = lsode(f2,y_0,x);
%plot(x,y, "linewidth",2); 

%y_0 = 9.985;
%y = lsode(f2,y_0,x);
%plot(x,y, "linewidth",2); 

hold off;

%print -dpng y-x2.png