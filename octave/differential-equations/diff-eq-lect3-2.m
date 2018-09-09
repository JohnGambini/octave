# diff-eq-lect3-2.m
#
# Copyright 2015 2016 2017 2018 by John Gambini
#
f1 = inline('(2*x) ./(1+cos(x)) + (sin(x)*y) / (1+cos(x))','x','y');
f2 = inline('(x.^2-6) ./ (1+cos(x))');
f3 = inline('(x.^2-4) ./ (1+cos(x))');
f4 = inline('(x.^2-2) ./ (1+cos(x))');
f5 = inline('(x.^2) ./ (1+cos(x))');
f6 = inline('(x.^2+2) ./ (1+cos(x))');

x = [-4:0.5:4];
y = x;

hold on;

dirfield(f1, x, y);

x = [-4:0.0625:4];

plot(x, f2(x),"linewidth",2);
plot(x, f3(x),"linewidth",2);
plot(x, f4(x),"linewidth",2);
plot(x, f5(x),"linewidth",2);
plot(x, f6(x),"linewidth",2);

hold off;

print dpng diff-eq-lect3-2.png