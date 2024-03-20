clc;
clear all;
close all;

x = [1 2 3];
y = [4 5 6];
z = [7 8 9];
angulo = 60.0;
cmx = 2.5;
cmy = 3.5;
[xrot,yrot,zrot] = rotar_gaussiana (x,y,z,angulo,cmx,cmy);
