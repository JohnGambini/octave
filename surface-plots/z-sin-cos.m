# simple-line.m
#
# Copyright 2015 2016 2017 2018 by John Gambini
#
ticks = [-3.14159:0.25:3.14159]
[xx,yy] = meshgrid(ticks,ticks);
z = sin(xx)+cos(yy);

df_x = cos(xx);
df_y = -sin(yy);

zz2 = zeros(size(xx));
zz1 = zz2-2;


figure(1);

hold on;

xlabel("x","fontsize",28,"fontname","times new roman");
ylabel("y","fontsize",28,"fontname","times new roman");

contour(xx,yy,z,"linewidth",2);
quiver(xx,yy,df_x,df_y,"linewidth",2);

hold off;

figure(2);

hold on;

xlabel("x","fontsize",28,"fontname","times new roman");
ylabel("y","fontsize",28,"fontname","times new roman");

quiver3(xx,yy,zz1,df_x,df_y,zz2);
surf(xx,yy,z);

hold off;
