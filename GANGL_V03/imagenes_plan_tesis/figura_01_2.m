clc; 
clear all; 
close all; 
mu = [0, 0]; 
sigma1 = 2; 
sigma2 = 2; 
[x, y] = meshgrid(-5:0.1:5, -5:0.1:5);
z = exp(-(x-mu(1)).^2/(2*sigma1^2) - (y-mu(2)).^2/(2*sigma2^2));

% Definir los límites de los colores y el mapa de colores personalizado
c_limits = [min(z(:)), max(z(:))];
c_values = linspace(c_limits(1), c_limits(2), 6); % 5 valores para 4 colores
color_names = {'', 'Zona Publica', 'Zona Social', 'Zona Personal', 'Zona Intima', ''};

% Graficar la superficie con colores personalizados
figure;
subplot(2,1,1);
surf(x, y, z);
colorbar('Ticks', c_values, 'TickLabels', color_names);
title('Función Gaussiana');
subplot(2,1,2);
contour(x,y,z,[0.1,0.1],'LineColor', 'b');
hold on;
contour(x,y,z,[0.3,0.3],'LineColor', [0.5, 0.8, 1.0]);
hold on;
contour(x,y,z,[0.6,0.6],'LineColor', 'g');
hold on;
contour(x,y,z,[0.9,0.9],'LineColor', [1.0, 0.7, 0.3]);
title('Curvas de Nivel');
colorbar('Ticks', c_values, 'TickLabels', color_names);
grid on;

