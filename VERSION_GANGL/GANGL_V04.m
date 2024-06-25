function GANGL_V04(x,y,GRAF,per)
    %% DIRECCIONES QUE SE USARAN
    addpath("VERSION_GANGL\funtions_V01\");
    addpath("VERSION_GANGL\funtions_V03\");
    addpath("VERSION_GANGL\funtions_V04\");
    %% Determinar el centro del grupo CG
    xcm = (max(x) + min(x)) / 2; 
    ycm = (max(y) + min(y)) / 2;
     %% Ordenamiento de los puntos en sentido horario.
        [x_ord, y_ord] = ordenar_puntos(xcm,ycm,x,y);
     %% Determinacion de las distancias y sus angulos con respecto al eje x, de cada punto al centro del grupo
        [dis, ang] = dis_ang (x_ord,y_ord,xcm,ycm);
        
     %% DETERMINACION DE LA ORIENTACION
    ang_vec = orientacion_vec(x_ord,y_ord,xcm,ycm,1);
    % Determinar el valor mas cercano a la orientacion
    orientacion = 1000;
    for i=1:length(ang)
        if ang_vec < ang(i)
            orientacion = ang(i); %Primer angulo, para rotar todo
            break;
        end
        %En el caso de que no hay angulos mayores a la direccion veectorial
        %escogera el primer angulo desde 0°
        if orientacion == 1000
            orientacion = ang(1);
        end
    end
    %% DETERMINANOS LA NUEVA DISTRIBUCION DE VECTORES
    % disp('direccion');
    % disp(ang_vec);disp(orientacion);
    % disp('distribucion normal');
    % disp(ang);disp(x_ord);disp(y_ord);
    [ang_new ang x_new y_new] = ordenamiento(ang, orientacion, x_ord, y_ord); %la nueva entrada sera: 
    %ang, x_new y y_new.
    % disp('distribucion con direccion');
    % disp(ang_new);disp(ang_ord);disp(x_new);disp(y_new);
    %% Determinacion de las distancias y sus angulos con respecto al eje x, de cada punto al centro del grupo
    [dis, ang_sum] = dis_ang (x_new,y_new,xcm,ycm);
    %% generando las varianzas
    min_sig = 0.5; % mínimo valor de las varianzas
    sigma_x = abs(dis) + min_sig;
    sigma_y = abs(dis) + min_sig;
    % Se le agrega el primer sigma al comienzo.
    sigma_x(length(sigma_x)+1)=sigma_x(1);
    sigma_y(length(sigma_y)+1)=sigma_y(1);
    %Se determinan las distancias para hallar los sigmas intermedios.
    for i=1:length(ang)
        if i==length(ang)
            distan(i)=360-ang(i)+ang(1);
        else
            distan(i)=ang(i+1)-ang(i);
        end
    end
    %se genera un valor de cero al comienzo del arreglo para manerar mejor los
    %indices:
    j=1;
    for i=1:length(distan)+1
        if i==1
            distancias(j)=0;
            j=j+1;
        else
            distancias(j)=distan(i-1);
            j=j+1;
        end
    end
    %Generacion de el vector de sigmas, para esto se hara un recorrido de 360
    %grados con saltos de delta_ang, se comenzara desde el punto mas cercano al
    %eje x y ademas contando el angulo desplazado positivamente en sentido
    %antihorario.
    delta_ang=1;%----------------------------------------------------------------------------------------------
    j=2;
    k=1;
    cont=0;
    angulo=0;
    for i=1:360
        if i>distancias(j)+angulo
            angulo=distancias(j)+angulo;
            j=j+1;
            k=k+1;
            cont=0;
        end
        t1=distancias(j)-cont;
        t2=cont;
        cont=cont+delta_ang;
        sigma_xxx(i) = ((t1/distancias(j))*sigma_x(k)) + ((t2/distancias(j))*sigma_x(k+1));
        sigma_yyy(i) = ((t1/distancias(j))*sigma_y(k)) + ((t2/distancias(j))*sigma_y(k+1));
    end

    %% ORDENAMIENTO DE LOS SIGMAS
    [sigma_xx sigma_yy] = ord_sigmas(orientacion, sigma_xxx, sigma_yyy);
    sigma_xx(360) = sigma_xx(359);
    sigma_yy(360) = sigma_yy(359);
    %% CONFIGURACION DE LA CREACION DE LA MALLA
    % disp('COMPARACION')
    % disp (sigma_xxx);
    % disp('COMPARACION')
    % disp (sigma_xx);
    % ---------------> Se crea la malla con la cual se hallara la gaussiana <--------------
    xpos = abs(max(x))+3;
    xneg = abs(min(x))-3;
    ypos = abs(max(y))+3;
    yneg = abs(min(y))-3;
    
    [xx, yy] = meshgrid((xneg):0.01:(xpos), (yneg):0.01:(ypos));
    % ----------------------------------> end malla <--------------------------------------
    tam=size(yy);
    for i=1:1:tam(1)
        for j=1:1:tam(2)
            theta = atan2(yy(i,j) - ycm, xx(i,j) - xcm); 
            theta = mod(rad2deg (theta), 360);
            alpha = round( theta ); %redondeando se asigna un valor al angulo OJO
            if alpha>=360
                alpha=360;
            end
            if alpha<=1
                alpha=1;
            end
            varianzax(i,j) = sigma_xx(alpha);
            varianzay(i,j) = sigma_yy(alpha);
        end
    end
    %% Se genera la gaussiana usando el metodo de raphael
    % rot = deg2rad(orientacion);
    % a = (cos(rot)^2)./(2*varianzay) + (sin(rot)^2)./(2*varianzax);
    % b = sin(2*rot)./(4*varianzay) - sin(2*rot)./(4*varianzax);
    % c = (sin(rot)^2)./(2*varianzay)+ (cos(rot)^2)./(2*varianzax);
    % f = exp(-(a.*(xx - xcm).^2 + 2*b.*(xx - xcm).*(yy - ycm) + c.*(yy - ycm).^2));
     %% Se crea cada punto zz de la funcion gaussiana - METODO PACO
    f = exp(-(xx - xcm).^2 ./ (2 .* varianzax.^2) - (yy - ycm).^2 ./ (2 .* varianzay.^2));
    %% Se grafica el contorno
    if GRAF==1 && per == 1
        mesh(xx, yy,f);
        hold on;
        graficar_personas3d(x,y);
    elseif GRAF==1 && per == 0
        mesh(xx, yy,f);
    elseif GRAF == 0 && per == 1
        graficar_personas(x,y);
        hold on;
        graficar_lineas_nivel(xx, yy,f,xcm,ycm);
    else
        graficar_lineas_nivel(xx, yy,f,xcm,ycm);
    end
    grid on;
end