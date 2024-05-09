%Ejemplos
clc;
clear all;
close all;
% Distribución 4 personas ordenadas de forma cuadrada.
li=5;%limite de coordenadas, maximo 5.
limvec=5; %limite del numero de personas.
n = randi([2, limvec]);% Generar un número aleatorio de elementos para el vector (n)
x = li * rand(1, n); % Valores aleatorios
y = li * rand(1, n); % Valores aleatorios 
figure (1)
graficar_personas3d(x,y);
hold on;
[xr, yr, zr] = GANGDL3d(x,y);
grid on;
% Distribución 3 personas ordenadas de forma cuadrada.
n = randi([2, limvec]);% Generar un número aleatorio de elementos para el vector (n)
x = li * rand(1, n); % Valores aleatorios
y = li * rand(1, n); % Valores aleatorios 
figure (2)
graficar_personas3d(x,y);
hold on;
[xr, yr, zr] = GANGDL3d(x,y);
grid on;
%Distribucion de 5 personas
n = randi([2, limvec]);% Generar un número aleatorio de elementos para el vector (n)
x = li * rand(1, n); % Valores aleatorios
y = li * rand(1, n); % Valores aleatorios 
figure (3)
graficar_personas3d(x,y);
hold on;
[xr, yr, zr] = GANGDL3d(x,y);
grid on;
%----------Aleatorio
n = randi([2, limvec]);% Generar un número aleatorio de elementos para el vector (n)
x = li * rand(1, n); % Valores aleatorios entre 0 y 10
y = li * rand(1, n); % Valores aleatorios entre 0 y 10
figure (4)
graficar_personas3d(x,y);
hold on;
[xr, yr, zr] = GANGDL3d(x,y);
grid on;
