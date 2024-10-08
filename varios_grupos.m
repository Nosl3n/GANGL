clc;
clear all;
close all;
addpath("VERSION_GANGL\");
addpath("VERSION_GANGL\funtions_V01\")
addpath("VERSION_GANGL\funtions_V05\")
vista = 2;
GRAF = 1;
per = 1;
li=5;%limite de coordenadas, maximo 5.
limvec=10; %limite del numero de personas.
%% caso con dos personas
n = randi([2, limvec]);% Generar un número aleatorio de elementos para el vector (n)
x = li * rand(1, n); % Valores aleatorios
y = li * rand(1, n); % Valores aleatorios 
figure
subplot(1, 2, 1);
Area_GAN = GANGL_V05(x,y,GRAF, vista,per);
axis equal;
% Seleccionar el segundo cuadrante
subplot(1, 2, 2);
Area_Raf = raphael_model(GRAF,x,y);
axis equal;
%% caso con tres personas
n = randi([2, limvec]);% Generar un número aleatorio de elementos para el vector (n)
x = li * rand(1, n); % Valores aleatorios
y = li * rand(1, n); % Valores aleatorios 
figure
subplot(1, 2, 1);
Area_GAN = GANGL_V05(x,y,GRAF, vista,per);
axis equal;
% Seleccionar el segundo cuadrante
subplot(1, 2, 2);
Area_Raf = raphael_model(GRAF,x,y);
axis equal;

%% caso con cuatro personas
n = randi([2, limvec]);% Generar un número aleatorio de elementos para el vector (n)
x = li * rand(1, n); % Valores aleatorios
y = li * rand(1, n); % Valores aleatorios 
figure
subplot(1, 2, 1);
Area_GAN = GANGL_V05(x,y,GRAF, vista,per);
axis equal;
% Seleccionar el segundo cuadrante
subplot(1, 2, 2);
Area_Raf = raphael_model(GRAF,x,y);
axis equal;
