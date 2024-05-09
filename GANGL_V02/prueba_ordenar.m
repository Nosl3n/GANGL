clc;
clear all;
close all;
% Definir los puntos x e y
x = [2, 4, 1, 5];
y = [9, 6, 2, 4];

% Calcular el centro de masa
cm = [mean(x), mean(y)];

% Calcular los ángulos con respecto al centro de masa (en grados)
angulos = rad2deg(atan2(y - cm(2), x - cm(1)));

% Ajustar los ángulos para que estén en el rango de 0 a 360 grados
angulos_ajustados = mod(angulos, 360);

% Ordenar los puntos según los ángulos ajustados
[~, indice_orden] = sort(angulos_ajustados);

% Generar los nuevos vectores x e y ordenados
x_ordenado = x(indice_orden);
y_ordenado = y(indice_orden);

% Mostrar los resultados
x_ordenado
y_ordenado
angulos_ajustados
plot(x,y,'o')
hold on;
plot(cm(1),cm(2),'o','Color','red')