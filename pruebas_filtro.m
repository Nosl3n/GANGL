clc; clear all; close all;
%% Importar la direccion de las funciones.
addpath('VERSION_GANGL/funtions_V01/');
addpath('VERSION_GANGL/funtions_V03/');
%% Data
x=[1 5 9 4 8 6];
y=[4 5 8 6 3 6];
%% centro
if length (x) == 2 %Si son dos personas CM
    xcm = sum(x) / length(x);
    ycm = sum(y) / length(y);
else %Mas de 2 personas Maximos y minimos
    xcm = (max(x) + min(x)) / 2; 
    ycm = (max(y) + min(y)) / 2;
end
%% Ordenamiento de puntos.
[x_ord, y_ord] = ordenar_puntos(xcm,ycm,x,y)
%% Filtro de personas muy cercanas entre si.
for i=1:length(x)
    % Distancias del origen a cada persona, ademas sus angulos con respecto al eje x:
    [dis, ang] = dis_ang (x_ord,y_ord,xcm,ycm);
    % Se añade un valor al final para la determinacion de la distancia.
    [x_mod y_mod] = entre_personas(10, ang, dis, x_ord, y_ord);
    if length(x_mod) == length(x_ord)
        break;
    else
        x_ord = x_mod;
        y_ord = y_mod;
    end
end
%% Agregar puntos cuando estan muy alejados
[dis1, ang1] = dis_ang (x_mod,y_mod,xcm,ycm)
nuevas_distancias = separacion(ang1)
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
aumentar
if aumentar ~= 0
    angulo = ang1(aumentar)+nuevas_distancias(aumentar)/2;
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
%% Grafico de las personas.
figure
graficar_personas(x,y);
hold on;
plot(xcm,ycm,'o','LineWidth',2,'Color','b');
hold on;
GANGL_V04(x,y,0,0);
grid on;
% 
figure
graficar_personas(x,y);
hold on;
plot(xcm,ycm,'o','LineWidth',2,'Color','b');
hold on;
GANGL_V04(x_mod,y_ord,0,0);
grid on;
%% 
figure
graficar_personas(x,y);
hold on;
plot(xcm,ycm,'o','LineWidth',2,'Color','b');
hold on;
GANGL_V04(x_aum,y_aum,0,0);
grid on;