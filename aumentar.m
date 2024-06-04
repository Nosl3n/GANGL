function [xmod ymod] = aumentar (x_mod,y_mod,xcm,ycm)
   
    for i=1:length(x_mod)
        [dis1, ang1] = dis_ang (x_mod,y_mod,xcm,ycm);
        nuevas_distancias = separacion(ang1);
        maximo = 50;
        aumentar = 0;
        for i=1:length(x_mod)
            if (nuevas_distancias(i) >= maximo) %filtro de distancia
                aumentar = i;
                break;
            else
                aumentar = 0;
            end
        end
        if aumentar ~= 0
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
        else
            disp('hola')
        end
        x_aum
        y_aum
    end
end