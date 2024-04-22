clc; clear all; close all;
%% Parametros de entrada
li=5;%limite de coordenadas, maximo 5.
limvec=6; %limite del numero de personas.
n = randi([2, limvec]);% Generar un número aleatorio de elementos para el vector (n)
x = li * rand(1, n); % Valores aleatorios
y = li * rand(1, n); % Valores aleatorios 
%% Determinar el centro del grupo CG
if length (x) == 2 %Si son dos personas, centro de masa "cm"
    xcm = sum(x) / length(x);
    ycm = sum(y) / length(y);
else %Mas de 2 personas, ConexHull "CH"
    k = convhull(x, y);
    xcm = mean(x(k));
    ycm = mean(y(k));
end
%% Determinar la orientacion del grupo
if xcm - xcm == 0
    xmove = -xcm;
else
    xmove = xcm;
end

if ycm - ycm == 0
    ymove = -ycm;
else
    ymove = ycm;
end
xor = x + xmove;
yor = y + ymove;
theta = orientacion_vec(xor, yor, 1); %% Ordenamiento de los puntos
[x_ord, y_ord] = ordenar_puntos(xcm, ycm, x ...
    , y);
[dis, ang] = dis_ang (x_ord,y_ord,xcm,ycm);
%% Determinar el primer individuo mas cercano a la direccion

%% generando las varianzas
limit = 2;
[x_mesh,y_mesh] = meshgrid(xcm-limit:0.01:xcm+limit,ycm-limit:0.01:ycm+limit);
alpha = atan2(y - ycm, x - xcm) - theta + 90;
 %% Graficas
graficar_personas(xor,yor);
%figure (2)
%graficar_personas(x,y);
grid on;