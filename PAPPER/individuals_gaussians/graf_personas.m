function graf_personas(x,y,theta)
    theta = deg2rad(theta);
    % Tamaño del círculo (diámetro de la cabeza)
    head_diameter = 0.25;
    % Tamaño de la elipse (ancho y largo de los hombros)
    shoulders_width = 0.5;
    shoulders_height = 0.28;
    % Graficar cada persona
    hold on;
    for i = 1:length(x)
        % Posición de la persona
        pos_x = x(i);
        pos_y = y(i);
        
        % Dirección de la persona
        direction = theta(i);
        
        % Graficar cabeza (círculo)
        head_center = [pos_x, pos_y];
        head_radius = head_diameter / 2;
        rectangle('Position', [head_center - head_radius, head_diameter, head_diameter], ...
                  'Curvature', [1, 1], 'FaceColor', 'blue');
        
        % Graficar hombros (elipse)
        shoulders_center = [pos_x, pos_y];
        shoulders_angle = direction + pi/2; % Girar 90 grados para que apunte hacia la flecha
        shoulders_a = shoulders_width / 2;
        shoulders_b = shoulders_height / 2;
        % Coordenadas de la elipse
        t = linspace(0, 2*pi, 100);
        shoulders_x = shoulders_center(1) + shoulders_a * cos(t) * cos(shoulders_angle) - shoulders_b * sin(t) * sin(shoulders_angle);
        shoulders_y = shoulders_center(2) + shoulders_a * cos(t) * sin(shoulders_angle) + shoulders_b * sin(t) * cos(shoulders_angle);
        % Graficar la elipse
        plot(shoulders_x, shoulders_y, 'LineWidth', 1, 'Color', 'blue','DisplayName', 'cuerpo');
            
        % Graficar flecha de dirección
        arrow_length = 0.2; % Longitud de la flecha
        arrow_x = pos_x + arrow_length * cos(direction);
        arrow_y = pos_y + arrow_length * sin(direction);
        quiver(pos_x, pos_y, arrow_x - pos_x, arrow_y - pos_y, 'LineWidth', 1.5, 'Color', 'green', 'MaxHeadSize', 2,'DisplayName', 'direccion');
    end
    axis equal;
    grid on;
end