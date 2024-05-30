clc;clear all; close all;
% Distribución 4 personas ordenadas de forma cuadrada.
%% Parametros de configuracion
GRAF=0; %0:grafica2d y 1:grafica3d
per=1;  %1:con personas y 0:sin personas
r=0.3;
li=5;%limite de coordenadas, maximo 5.
limvec=10; %limite del numero de personas.
%% Caso especidico para la solucion
x=[1 5 9 4 8 6];
y=[4 5 8 6 3 6];
GANGL_V04(x,y,GRAF, per);

% %% Generacion de puntos aleatorios.
% n = randi([2, limvec]);% Generar un número aleatorio de elementos para el vector (n)
% x = li * rand(1, n); % Valores aleatorios
% y = li * rand(1, n); % Valores aleatorios 
% z = li * rand(1, n); % Valores aleatorios 
% figure;
% GANGL_V04(x,y,GRAF,per);
% 
% %% Generacion de puntos aleatorios.
% n = randi([2, limvec]);% Generar un número aleatorio de elementos para el vector (n)
% x = li * rand(1, n); % Valores aleatorios
% y = li * rand(1, n); % Valores aleatorios 
% z = li * rand(1, n); % Valores aleatorios 
% figure;
% GANGL_V04(x,y,GRAF,per);
% %% Generacion de puntos aleatorios.
% n = randi([2, limvec]);% Generar un número aleatorio de elementos para el vector (n)
% x = li * rand(1, n); % Valores aleatorios
% y = li * rand(1, n); % Valores aleatorios 
% z = li * rand(1, n); % Valores aleatorios 
% figure;
% GANGL_V04(x,y,GRAF,per);
% %% Generacion de puntos aleatorios.
% n = randi([2, limvec]);% Generar un número aleatorio de elementos para el vector (n)
% x = li * rand(1, n); % Valores aleatorios
% y = li * rand(1, n); % Valores aleatorios 
% z = li * rand(1, n); % Valores aleatorios 
% figure;
% GANGL_V04(x,y,GRAF,per);
% %% Generacion de puntos aleatorios.
% n = randi([2, limvec]);% Generar un número aleatorio de elementos para el vector (n)
% x = li * rand(1, n); % Valores aleatorios
% y = li * rand(1, n); % Valores aleatorios 
% z = li * rand(1, n); % Valores aleatorios 
% figure;
% GANGL_V04(x,y,GRAF,per);