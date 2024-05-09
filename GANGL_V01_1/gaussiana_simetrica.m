clear all;
close all;
clc;
% % Definir los límites de la malla
% x_min = -5;
% x_max = 5;
% y_min = -5;
% y_max = 5;
% 
% % Definir el paso de la malla
% step = 0.1;
% 
% % Crear la malla
% [x, y] = meshgrid(x_min:step:x_max, y_min:step:y_max);

% Definir el centro de la gaussiana
xc = 0;yc = 0;

% Definir las varianzas en x y y
% sx = 1;
% sy = 2;

% Calcular la función gaussiana en cada punto de la malla
gaussian2_a2_focussed(xc, yc, deg2rad(90), 2, 1, 1, 0.5);

% % Visualizar la función gaussiana
% surf(x, y, f);
% %contour(x,y,f,[0.3,0.3],'LineColor', 'b');
% xlabel('x');
% ylabel('y');
% zlabel('f(x, y)');
% title('Función Gaussiana');
% grid on;
