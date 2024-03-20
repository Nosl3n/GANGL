clc; close all;clear all;

% Definir posiciones de las personas
x = [2, 4, 5, 3, 6];
y = [4, 2, 2, 6, 4];
% x = [2, 6, 5, 6, 6];
% y = [6, 4, 3, 3, 3.2];
r = 0.5; % Radio del círculo que representa a cada persona

% Graficar círculos para representar a cada persona con orientación
figure;
for i = 1:length(x)
    % Graficar círculo con orientación
    rectangle('Position', [x(i) - r, y(i) - r, 2 * r, 2 * r], 'Curvature', [1, 1], 'EdgeColor', [0.5 0.4 0.2]);
    hold on;
    
    % Calcular centro de masa - centro de masa
    cm = [mean(x), mean(y)];
end

  % centro de grupo convhull
    % k = convhull(x, y);
    % centro_x = mean(x(k));
    % centro_y = mean(y(k));
    % 
    % % centro del grupo teniendo cuenta el minimo y maximo
    % min_x = min(x);
    % max_x = max(x);
    % min_y = min(y);
    % max_y = max(y);
    % 
    % cen_x = ((max_x - min_x) / 2) + min_x;
    % cen_y = ((max_y - min_y) / 2) + min_y;

% Graficar centro de masa
plot(cm(1), cm(2), 'ro', 'MarkerSize', 10); % Marcar centro de masa en rojo
% hold on;
% plot(centro_x, centro_y,'bo','MarkerSize', 10);
% hold on;
% plot(cen_x, cen_y,'go','MarkerSize', 10);
title('Distribución de personas con sus CG');
xlabel('Coordenada X');
ylabel('Coordenada Y');
axis equal; % Asegurar que los ejes tengan la misma escala
grid on; % Mostrar cuadrícula en la gráfica

% Agregar leyenda
%legend('Centro de Masa', 'Centro de Grupo (MinMax)', 'Centro de Grupo (Convex Hull)');
