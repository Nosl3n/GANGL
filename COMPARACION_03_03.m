%% COMPARACION ENTRE LOS MODELOS GANGL V01 Y GANGL V02
clc;
clear all;
close all;
addpath('VERSION_GANGL/funtions_V01/');
addpath('VERSION_GANGL/funtions_V03/');
addpath('VERSION_GANGL/')
% Distribución 4 personas ordenadas de forma cuadrada.
%% Parametros de configuracion
GRAF=0; %0:grafica2d y 1:grafica3d
per = 1;
%% NUEVO GRUPO
li=5;%limite de coordenadas, maximo 5.
limvec=5; %limite del numero de personas.
n = randi([2, limvec]);% Generar un número aleatorio de elementos para el vector (n)
x = li * rand(1, n); % Valores aleatorios
y = li * rand(1, n); % Valores aleatorios 
z = li * rand(1, n); % Valores aleatorios 

%% Graficas comparativas modelo
figure
subplot(1, 2, 1);
GANGL_V03(x,y,GRAF,per);
title('GANGL_V03');
% Seleccionar el segundo cuadrante
subplot(1, 2, 2);
GANGL_V03_1(x,y,GRAF,per);
title('GANGL_V03_1');

%% NUEVO GRUPO
li=5;%limite de coordenadas, maximo 5.
limvec=5; %limite del numero de personas.
n = randi([2, limvec]);% Generar un número aleatorio de elementos para el vector (n)
x = li * rand(1, n); % Valores aleatorios
y = li * rand(1, n); % Valores aleatorios 
z = li * rand(1, n); % Valores aleatorios 

%% Graficas comparativas modelo
figure
subplot(1, 2, 1);
GANGL_V03(x,y,GRAF,per);
title('GANGL_V03');
% Seleccionar el segundo cuadrante
subplot(1, 2, 2);
GANGL_V03_1(x,y,GRAF,per);
title('GANGL_V03_1');

%% NUEVO GRUPO
li=5;%limite de coordenadas, maximo 5.
limvec=5; %limite del numero de personas.
n = randi([2, limvec]);% Generar un número aleatorio de elementos para el vector (n)
x = li * rand(1, n); % Valores aleatorios
y = li * rand(1, n); % Valores aleatorios 
z = li * rand(1, n); % Valores aleatorios 

%% Graficas comparativas modelo
figure
subplot(1, 2, 1);
GANGL_V03(x,y,GRAF,per);
title('GANGL_V03');
% Seleccionar el segundo cuadrante
subplot(1, 2, 2);
GANGL_V03_1(x,y,GRAF,per);
title('GANGL_V03_1');

%% NUEVO GRUPO
li=5;%limite de coordenadas, maximo 5.
limvec=5; %limite del numero de personas.
n = randi([2, limvec]);% Generar un número aleatorio de elementos para el vector (n)
x = li * rand(1, n); % Valores aleatorios
y = li * rand(1, n); % Valores aleatorios 
z = li * rand(1, n); % Valores aleatorios 

%% Graficas comparativas modelo
figure
subplot(1, 2, 1);
GANGL_V03(x,y,GRAF,per);
title('GANGL_V03');
% Seleccionar el segundo cuadrante
subplot(1, 2, 2);
GANGL_V03_1(x,y,GRAF,per);
title('GANGL_V03_1');

%% NUEVO GRUPO
li=5;%limite de coordenadas, maximo 5.
limvec=5; %limite del numero de personas.
n = randi([2, limvec]);% Generar un número aleatorio de elementos para el vector (n)
x = li * rand(1, n); % Valores aleatorios
y = li * rand(1, n); % Valores aleatorios 
z = li * rand(1, n); % Valores aleatorios 

%% Graficas comparativas modelo
figure
subplot(1, 2, 1);
GANGL_V03(x,y,GRAF,per);
title('GANGL_V03');
% Seleccionar el segundo cuadrante
subplot(1, 2, 2);
GANGL_V03_1(x,y,GRAF,per);
title('GANGL_V03_1');

