clc; close all; clear all;

% Definir posiciones de las personas
x = [2, 4, 5, 3, 6];
y = [4, 2, 2, 6, 4];
r = 0.5; % Radio del círculo que representa a cada persona

% Graficar círculos para representar a cada persona con orientación
figure;
for i = 1:length(x)
    % Graficar círculo con orientación
    rectangle('Position', [x(i) - r, y(i) - r, 2 * r, 2 * r], 'Curvature', [1, 1], 'EdgeColor', [0.5 0.4 0.2]);
    hold on;
    
    % Calcular centro de masa
    cm = [mean(x), mean(y)];
    
    % Graficar línea desde el centro de masa a cada círculo
    plot([cm(1), x(i)], [cm(2), y(i)], 'k--');
end

% Graficar centro de masa
plot(cm(1), cm(2), 'ro', 'MarkerSize', 10); % Marcar centro de masa en rojo

% Graficar ejes x y y centrados en el centro de masa
plot([cm(1) - r*4, cm(1) + r*4], [cm(2), cm(2)], 'r-', 'LineWidth', 1.5); % Eje x
plot([cm(1), cm(1)], [cm(2) - r*4, cm(2) + r*4], 'r-', 'LineWidth', 1.5); % Eje y

title('Distribución de personas con sus CG y ejes');
xlabel('Coordenada X');
ylabel('Coordenada Y');
axis equal; % Asegurar que los ejes tengan la misma escala
grid on; % Mostrar cuadrícula en la gráfica
