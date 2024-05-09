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

% Definir la disposición de la cuadrícula (1 fila, 2 columnas) y seleccionar el primer cuadrante
subplot(1, 2, 1);
[xr, yr, zr] = gaussiana_asimetrica_n_gdl3d(x,y,0, 0, 0, 0);
hold on;
graficar_personas3d(x,y);
grid on;
title('Primer modelo');
% Seleccionar el segundo cuadrante
subplot(1, 2, 2);
GANGDL3d(x,y);
hold on;
graficar_personas3d(x,y);
grid on;
title('Segundo modelo')