clc;
clear all;
close all;
x = [1 2 5 3];
y = [4 5 5 -2];
z = [1 1 1 1];
angulo = 60.0;
xcm = 2;
ycm = 1;
%% Rotando 30°
[xrot,yrot,zrot] = rotar_gaussiana (x,y,z,30,xcm,xcm);
figure (1)
ang = orientacion_vec(x,y,xcm,ycm,1);
graficar_personas(x,y);
hold on;
plot(xcm,ycm,'o');
grid on;
%-----------------------------------
figure (2)
graficar_personas(xrot,yrot);
hold on;
plot(xcm,ycm,'o');
grid on;
ng = orientacion_vec(xrot,yrot,xcm,ycm,1);