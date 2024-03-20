clc; clear all; close all;
x = [5 8 4 0 -5 0];
y = [8 6 5 3 -10 -20];
xcm = 1;
ycm = 3;
xc = ones(size(x))*xcm;
yc = ones(size(y))*ycm;
if length(x) == 2
    resultan = [x(1), y(1)];
else 
    [x_ord, y_ord] = ordenar_puntos(xcm, ycm, x, y)
    for i = 1:length(x)-1
        disp(i);
        if i==1
            resultan = result(xcm,ycm,[x_ord(i) x_ord(i+1)],[y_ord(i) y_ord(i+1)]);
        else
            resultan = result(xcm,ycm,[resultan(1) x_ord(i+1)],[resultan(2) y_ord(i+1)]);
        end
    end
end
quiver(xc, yc, x_ord, y_ord, 'r', 'LineWidth', 2); hold on;
quiver(xcm, ycm, resultan(1), resultan(2), 'g', 'LineWidth', 2);
axis equal;

%verificar el hecho de que com ose usan sumas, difilmente se tendra una
%resultante negativa, la idea es de que lo spuntos se muevan al origen para
%determinar la resultante y luego se puede volver a mover a su lugar
%original.
