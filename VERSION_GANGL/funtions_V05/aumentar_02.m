function [x_aaum y_aaum] = aumentar_02 (maximo,x_ord,y_ord,xcm,ycm)
    addpath('VERSION_GANGL\funtions_V01\');
    addpath('VERSION_GANGL\funtions_V04\');
    [dis1, ang1] = dis_ang (x_ord,y_ord,xcm,ycm);
    nuevas_distancias = separacion(ang1);
    j=1;
    for i=1:length(nuevas_distancias)
        if nuevas_distancias(i) > maximo
            cambios(j)=i;
            j=j+1;
        end
    end
    j=1;
    if length(cambios) ~= 0
        for i=1:length(cambios)
            if cambios(length(cambios)) == length(nuevas_distancias)
                angulo = ang1(cambios(i)) + (nuevas_distancias(cambios(i))/2);
                Lnew = dis1(cambios(i))/4+dis1(1)/4;
                xnew = cos(deg2rad(angulo))*Lnew+xcm;
                ynew = sin(deg2rad(angulo))*Lnew+ycm;
                x_mas(j) = xnew;
                y_mas(j) = ynew;
                j=j+1;
            else
                angulo = ang1(cambios(i)) + (nuevas_distancias(cambios(i))/2);
                Lnew = dis1(cambios(i))/4+dis1(cambios(i)+1)/4;
                xnew = cos(deg2rad(angulo))*Lnew+xcm;
                ynew = sin(deg2rad(angulo))*Lnew+ycm;
                x_mas(j) = xnew;
                y_mas(j) = ynew;
                j=j+1;
            end
        end
        j=1;
        for i=1:length(x_ord)+length(x_mas)
            if i <= length(x_ord)
                x_aum (i) = x_ord(i);  
                y_aum (i) = y_ord(i);
            else
                x_aum (i) = x_mas(j);  
                y_aum (i) = y_mas(j);
                j=j+1;
            end
        end
        [x_aaum, y_aaum] = ordenar_puntos(xcm,ycm,x_aum,y_aum);
    end
end