clc;
clear all;
close all;
% Distribución 4 personas ordenadas de forma cuadrada.
r=0.3;
li=5;%limite de coordenadas, maximo 5.
limvec=10; %limite del numero de personas.
n = randi([2, limvec]);% Generar un número aleatorio de elementos para el vector (n)
x = li * rand(1, n); % Valores aleatorios
y = li * rand(1, n); % Valores aleatorios 
figure (1)
GANGL_V01(x,y,0,1);
grid on;