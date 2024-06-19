function [x_aum y_aum] = aumentar (maximo,x_ord,y_ord,xcm,ycm)
    addpath('VERSION_GANGL\funtions_V01\');
    addpath('VERSION_GANGL\funtions_V04\');
    aumentar = 0;
    [dis1, ang1] = dis_ang (x_ord,y_ord,xcm,ycm);
    nuevas_distancias = separacion(ang1);
    for i=1:length(x_ord)
        if (nuevas_distancias(i) >= maximo) %filtro de distancia
            aumentar = i;
            break;
        else
            aumentar = 0;
        end
    end
    if aumentar ~= 0
        if aumentar == length(x_ord)
            angulo = ang1(aumentar) + (nuevas_distancias(aumentar)/2);
            Lnew = dis1(aumentar)/4+dis1(1)/4;
            xnew = cos(deg2rad(angulo))*Lnew+xcm;
            ynew = sin(deg2rad(angulo))*Lnew+ycm;
            j=1;
            for i=1:length(y_ord)+1
                if i == aumentar +1 
                    x_aum(i) = xnew;
                    y_aum(i) = ynew;
                else
                    x_aum(i) = x_ord(j);
                    y_aum(i) = y_ord(j);
                    j=j+1;
                end
            end
        else
            angulo = ang1(aumentar) + (nuevas_distancias(aumentar)/2);
            Lnew = dis1(aumentar)/4+dis1(aumentar+1)/4;
            xnew = cos(deg2rad(angulo))*Lnew+xcm;
            ynew = sin(deg2rad(angulo))*Lnew+ycm;
            j=1;
            for i=1:length(y_ord)+1
                if i == aumentar +1 
                    x_aum(i) = xnew;
                    y_aum(i) = ynew;
                else
                    x_aum(i) = x_ord(j);
                    y_aum(i) = y_ord(j);
                    j=j+1;
                end
            end
        end
    else
        disp('No hay mas que aumentar')
        x_aum = x_ord;
        y_aum = y_ord;
    end
end