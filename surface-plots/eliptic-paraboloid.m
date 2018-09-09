#
# elliptic-paraboloid.m
#
# Copyright 2015 2016 2017 2018 by John Gambini
#

figure;
[r,the]=meshgrid([0:0.1:5],[0:pi/20:2*pi]);
x1=r.*cos(the);
y1=r.*sin(the);
z1=-x1.^2-y1.^2;
surf(x1,y1,z1)

#df_x = -x1.*2;
#df_y = -y1.*2;
#z = zeros(size(x1));
%quiver3(x1,y1,z,df_x,df_y,z);

title('ELLIPTICAL PARABOLOID')
xlabel x
ylabel y
zlabel z

