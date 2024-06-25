%% COMPARACION ENTRE LOS MODELOS GANGL V05
clc;
clear all;
close all;
addpath('VERSION_GANGL/funtions_V01/');
addpath('VERSION_GANGL/funtions_V03/');
addpath('VERSION_GANGL/funtions_V05/');
addpath('VERSION_GANGL/')
% Distribución 4 personas ordenadas de forma cuadrada.
r=0.3;
li=5;%limite de coordenadas, maximo 5.
limvec=10; %limite del numero de personas.
n = randi([2, limvec]);% Generar un número aleatorio de elementos para el vector (n)
x = li * rand(1, n); % Valores aleatorios
y = li * rand(1, n); % Valores aleatorios 
z = li * rand(1, n); % Valores aleatorios 
%% Parametros de configuracion
GRAF=0; %0:grafica2d y 1:grafica3d
per=1;  %1:con personas y 0:sin personas
%% Determinacion del centro del grupo:
% xcm = (max(x) + min(x)) / 2; 
% ycm = (max(y) + min(y)) / 2;
xcm = sum(x) / length(x);
ycm = sum(y) / length(y);
%% Rotar la gaussiana 90°
giro = 45;
[xr,yr,zr] = rotar_gaussiana(x,y,z,giro,xcm,ycm);
%% Graficas comparativas modelo V01
figure
subplot(1, 2, 1);
GANGL_V05(x,y,GRAF,per);
title('GANGL_V05');
axis equal;
% Seleccionar el segundo cuadrante
subplot(1, 2, 2);
GANGL_V05(xr,yr,GRAF,per);
title('GANGL_V05 - GIRADO ');
axis equal;
% %% GRAFICA DEL MODELO V02
% figure
% subplot(1, 2, 1);
% GANGL_V04(x,y,GRAF,per);
% title('GANGL_V04');
% % Seleccionar el segundo cuadrante
% subplot(1, 2, 2);
% GANGL_V04(xr,yr,GRAF,per);
% title('GANGL_V04 - GIRADO ');
