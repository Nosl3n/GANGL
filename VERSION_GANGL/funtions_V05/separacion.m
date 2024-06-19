%funcio qu eme devuelve un vector con las distancias entre dos personas
%est adistancia esta en ° y es con respecto al centro del grupo.
function distancias = separacion(ang)
    ang(length(ang)+1) = 360 + (ang(1));
    %% Angulos entre personas, comenzando de la p1.
    for i=1:length(ang)-1
        distancias(i) = ang (i+1) - ang(i);
    end
end