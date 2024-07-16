function Area = raphael_model(graf,x,y)
    addpath('VERSION_GANGL\funtions_V01\');    
    %% ordenar detemrinar el centro del grupo
    xcm = (max(x) + min(x)) / 2; 
    ycm = (max(y) + min(y)) / 2;
    %% Ordenar puntos
    [x_ord, y_ord] = ordenar_puntos(xcm,ycm,x,y);
    %% determinar las distancias del CG a cada persona.
    [dis, ang] = dis_ang (x_ord,y_ord,xcm,ycm);
    %% determinar la maxima distancia.
    md = max(dis);
    %% Determinar la direccion del grupo
    ang_vec = orientacion_vec(x_ord,y_ord,xcm,ycm,graf);
    rotation = deg2rad(ang_vec);
    %% Parametro de l afuncion gaussiana
    variance_front = md+1*md;    % Varianza al frente
    variance_right = md+0.5*md;    % Varianza a la derecha
    variance_left = md+0.5*md;     % Varianza a la izquierda
    variance_rear = md+0.1*md;     % Varianza atrás
    %% Llamada a la función
    Area = gaussian2_a2_focussed(graf,x,y,xcm, ycm, rotation, variance_front, variance_right, variance_left, variance_rear);
    if graf == 1   
        hold on;
        plot(xcm, ycm, 'bo', 'MarkerSize', 15);
        hold on;
        plot(xcm, ycm, 'bo', 'MarkerSize', 10);
        hold on;
        plot(xcm, ycm, 'bo', 'MarkerSize', 5);
        hold on;
        graficar_personas(x,y);
        grid on;
    % else 
    %     close all;
    end
end
