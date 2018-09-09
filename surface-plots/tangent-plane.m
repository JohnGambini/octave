#
# tangent-plane.m
#
# Copyright 2015 2016 2017 2018 by John Gambini
#
ticks = [-3.14159:0.25:3.14159]
[xx,yy] = meshgrid(ticks,ticks);

z1 = sin(xx)+cos(yy);

hold on

xlabel("x","fontsize",28,"fontname","times new roman");
ylabel("y","fontsize",28,"fontname","times new roman");

mesh(xx,yy,z1);

x0 = pi/2-pi/8;
y0 = pi/6;
z0 = sin(x0)+cos(y0);

df_x = cos(x0);
df_y = -sin(y0);

%equation of a plane: z = fx(x0,y0)(x-x0) + fy(x0,y0)(y-y0) + z0

xticks = [x0-2.5,0.25,x0+2.5];
yticks = [y0-2.5,0.25,y0+2.5];
[xxx,yyy] = meshgrid(xticks,yticks);

z2 = (xxx.-x0) * df_x + (yyy.-y0) * df_y + z0;
%z2 = z2.+z0;

h = surf(xxx,yyy,z2);
set(h,'facecolor','interp','edgecolor','none');


hold off