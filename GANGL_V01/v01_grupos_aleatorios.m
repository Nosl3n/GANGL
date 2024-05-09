%Ejemplos
clc;
clear all;
close all;
addpath("funtions/");
%% PARAMETROS DE CAMBIO
li=5;%limite de coordenadas, maximo 5 para cada eje.
limvec=3; %limite del numero de personas.
graf = 1; %grafica 2d(0), grafica 3d(1)
per = 1; %añadir personas (1), sin personas (0);
%% PRIMERA DISTRIBUCION ALEATORIA
n = randi([2, limvec]);% Generar un número aleatorio de elementos para el vector (n)
x = li * rand(1, n); % Valores aleatorios
y = li * rand(1, n); % Valores aleatorios 
figure
GANGL_V01(x,y,graf, per);
grid on;
%% PRIMERA DISTRIBUCION ALEATORIA
n = randi([2, limvec]);% Generar un número aleatorio de elementos para el vector (n)
x = li * rand(1, n); % Valores aleatorios
y = li * rand(1, n); % Valores aleatorios 
figure
GANGL_V01(x,y,graf, per);
grid on;
%% PRIMERA DISTRIBUCION ALEATORIA
n = randi([2, limvec]);% Generar un número aleatorio de elementos para el vector (n)
x = li * rand(1, n); % Valores aleatorios
y = li * rand(1, n); % Valores aleatorios 
figure
GANGL_V01(x,y,graf, per);
grid on;
%% PRIMERA DISTRIBUCION ALEATORIA
n = randi([2, limvec]);% Generar un número aleatorio de elementos para el vector (n)
x = li * rand(1, n); % Valores aleatorios
y = li * rand(1, n); % Valores aleatorios 
figure
GANGL_V01(x,y,graf, per);
grid on;
%% PRIMERA DISTRIBUCION ALEATORIA
n = randi([2, limvec]);% Generar un número aleatorio de elementos para el vector (n)
x = li * rand(1, n); % Valores aleatorios
y = li * rand(1, n); % Valores aleatorios 
figure
GANGL_V01(x,y,graf, per);
grid on;
%% PRIMERA DISTRIBUCION ALEATORIA
n = randi([2, limvec]);% Generar un número aleatorio de elementos para el vector (n)
x = li * rand(1, n); % Valores aleatorios
y = li * rand(1, n); % Valores aleatorios 
figure
GANGL_V01(x,y,graf, per);
grid on;
%% PRIMERA DISTRIBUCION ALEATORIA
n = randi([2, limvec]);% Generar un número aleatorio de elementos para el vector (n)
x = li * rand(1, n); % Valores aleatorios
y = li * rand(1, n); % Valores aleatorios 
figure
GANGL_V01(x,y,graf, per);
grid on;