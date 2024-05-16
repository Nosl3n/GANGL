function [sig_x sig_y] = ord_sigmas(referencia, x, y)    
    indice = abs(referencia);%Encuentra el indice de la referencia
    sig_x = [x(indice:end), x(1:indice-1)];%Reordenamiento segun el indice
    sig_y = [y(indice:end), y(1:indice-1)];%Reordenamiento segun el indice
end