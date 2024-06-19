function ang = orientacion_vec(x,y,cmx,cmy,graf)
%% Se determina cuando se tiene que mover cada punto, para estar en el origen.
    if cmx - cmx == 0
        xmove = -cmx;
    else
        xmove = cmx;
    end

    if cmy - cmy == 0
        ymove = -cmy;
    else
        ymove = cmy;
    end
    % se mueve todo al origen.
    x=x + xmove;
    y=y + ymove;

    if length(x) == 2
       %Cuando hay dos inidividuos, la direccion es el primer individuo.
        resultan = [x(1), y(1)];
    else 
        %ordenar los puntos
        [x_ord, y_ord] = ordenar_puntos(0, 0, x, y);
        %Se hallan la direccion 
        for i = 1:length(x)-1
            if i==1
                resultan = result([x_ord(i) x_ord(i+1)],[y_ord(i) y_ord(i+1)]);
            else
                resultan = result([resultan(1) x_ord(i+1)],[resultan(2) y_ord(i+1)]);
            end
        end
    end
    %Caso en el que la resultante sea cero
    if resultan(1) == 0 && resultan(2)== 0
        resultan = [x_ord(1), y_ord(1)];
    end
    %Determinar el angulo
    an = atan2(resultan(2) - 0, resultan(1) - 0); 
    ang = mod(rad2deg(an), 360);
    %graficas
    xc = zeros(size(x));
    yc = zeros(size(y));
    %regresar todo a su posicion original
    x_dir = resultan(1) - xmove;
    y_dir = resultan(2) - ymove;
    
    if graf == 1
        plot([cmx x_dir], [cmy y_dir], 'g', 'LineWidth', 2);
        hold on;
    end
end









