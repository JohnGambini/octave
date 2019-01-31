# surface-and-normals.m
#
# Copyright 2015 2016 2017 2018 by John Gambini
#
[x, y, z] = peaks (25);
surf (x, y, z);
hold on;
[u, v, w] = surfnorm (x, y, z / 10);
h = quiver3 (x, y, z, u, v, w);
set (h, "maxheadsize", 0.33);

