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
z = li * rand(1, n); % Valores aleatorios 
%% DETERMINAR EL CENTRO DEL GRUPO
if length (x) == 2 %Si son dos personas CM
    xcm = sum(x) / length(x);
    ycm = sum(y) / length(y);
else %Mas de 2 personas CH
    k = convhull(x, y);
    xcm = mean(x(k));
    ycm = mean(y(k));
end

% Definir la disposición de la cuadrícula (1 fila, 2 columnas) y seleccionar el primer cuadrante
figure

subplot(1, 2, 1);
GANGDL_v01(x,y);
hold on;
graficar_personas(x,y);
grid on;
title('Primer modelo');
% Seleccionar el segundo cuadrante
subplot(1, 2, 2);
GANGDL(x,y);
hold on;
graficar_personas(x,y);
grid on;
title('Segundo modelo')

%% rotacion: 30°
[xr, yr, zr] = rotar_gaussiana(x,y,z,90,xcm,ycm);
figure

subplot(1, 2, 1);
GANGDL_v01(xr,yr);
hold on;
graficar_personas(xr,yr);
grid on;
title('Primer modelo');
% Seleccionar el segundo cuadrante
subplot(1, 2, 2);
GANGDL(xr,yr);
hold on;
graficar_personas(xr,yr);
grid on;
title('Segundo modelo')
