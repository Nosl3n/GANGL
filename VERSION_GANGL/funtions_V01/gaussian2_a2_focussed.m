function Area = gaussian2_a2_focussed(graf, x,y,mean_x, mean_y, rotation, variance_front, variance_right, variance_left, variance_rear)
    lado = 2.5; %maximo valor de cada lado de la grafica
    paso = 0.1; %Paso de la malla, entre punto a punto
    xpos = abs(max(x))+lado;
    xneg = abs(min(x))-lado;
    ypos = abs(max(y))+lado;
    yneg = abs(min(y))-lado;
    %Se genera la malla en la que se determianra cada punto de la gaussiana.
    [x, y] = meshgrid((xneg):paso:(xpos), (yneg):paso:(ypos));
    %[x,y] = meshgrid(mean_x-limit:0.01:mean_x+limit,mean_y-limit:0.01:mean_y+limit);
    alpha = atan2(y - mean_y, x - mean_x) - rotation + pi/2;
    size_alpha = size(alpha);
    for (i=1:size_alpha(1))
        for (j=1:size_alpha(2))
            if (alpha(i,j) > pi)
                alpha(i,j) = alpha(i,j) - 2*pi;
            elseif (alpha(i,j) < -pi)
                alpha(i,j) = alpha(i,j) + 2*pi;
            end
        end
    end
    for (i=1:size_alpha(1))
        for (j=1:size_alpha(2))
            if (alpha(i,j) <= 0)
                variance(i,j) = variance_rear;
            else
                variance(i,j) = variance_front;
            end
        end
    end
    for (i=1:size_alpha(1))
        for (j=1:size_alpha(2))
            if (alpha(i,j) >= pi/2  | alpha(i,j) <= -pi/2 )
                variance_sides(i,j) = variance_left;
            else
                variance_sides(i,j) = variance_right;
            end
        end
    end
    ones_g = ones(size_alpha(1),size_alpha(2));
    a = (cos(rotation)^2)./(2*variance) + (sin(rotation)^2)./(2*variance_sides);
    b = sin(2*rotation)./(4*variance) - sin(2*rotation)./(4*variance_sides);
    c = (sin(rotation)^2)./(2*variance)+ (cos(rotation)^2)./(2*variance_sides);
    f = exp(-(a.*(x - mean_x).^2 + 2*b.*(x - mean_x).*(y - mean_y) + c.*(y - mean_y).^2));
    %surf(x, y, f, 'FaceColor', 'interp', 'EdgeColor', 'none');
    if graf == 1
        contour(x,y,f,[0.3,0.3],'LineColor', 'b');
        hold on;
        contour(x,y,f,[0.5,0.5],'LineColor', 'g');
        hold on;
        contour(x,y,f,[0.75,0.75],'LineColor', 'r');
        xlabel('x');
        ylabel('y');
        zlabel('f(x, y)');
        title('Función Gaussiana');
        grid on;
    end
    % Obtener el área bajo el contorno de nivel 0.3
    if graf ~= 1
        % Crear la figura pero hacer que no sea visible
        fig = figure('Visible', 'off');
    end


    hold on;
    [C, h] = contour(x, y, f, [0.3, 0.3]);
    Area = 0;
    
    for k = 1:length(h.LevelList)
        contour_level = h.LevelList(k);
        if contour_level == 0.3
            for i = 1:length(h.ContourMatrix)
                x_contour = h.ContourMatrix(1, 2:end);
                y_contour = h.ContourMatrix(2, 2:end);
                
                % Calcular el área usando el método de integración numérica
                Area = polyarea(x_contour, y_contour);
            end
        end
    end
    
    hold off;
    if graf ~= 1
        close(fig);
    end
end

