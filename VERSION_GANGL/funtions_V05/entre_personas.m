function [xmod ymod] = entre_personas(minima, ang, dis, x_ord, y_ord)
    distancias = separacion (ang); %determian las distancias entre personas
    eliminar = 0;
    for i=1:length(distancias)
        if (distancias(i) <= minima) %filtro de distancia
            if i == length(x_ord)
                if dis(i) < dis(1)
                    eliminar = i;
                else
                    eliminar = 1;
                end
            else
                if dis(i) < dis(i+1)
                    eliminar = i;
                else
                    eliminar = i+1;
                end
            end
        end
    end
    j=1;
    if eliminar == 0
        xmod = x_ord;
        ymod = y_ord;
    else
        for i=1:length(x_ord)
            if i == eliminar
                continue;
            else
                xmod(j) = x_ord(i);
                ymod(j) = y_ord(i);
                j=j+1;
            end
           
        end
    end
end