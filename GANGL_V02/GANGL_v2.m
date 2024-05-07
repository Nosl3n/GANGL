clc; clear all; close all;
%% Parametros de entrada
% li=5;%limite de coordenadas, maximo 5.
% limvec=6; %limite del numero de personas.
% n = randi([2, limvec]);% Generar un número aleatorio de elementos para el vector (n)
% x = li * rand(1, n); % Valores aleatorios
% y = li * rand(1, n); % Valores aleatorios 
%% Parametro de entrada estatico
x=[3 6 9 1];
y=[5 8 0 2];
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
[x_ord, y_ord] = ordenar_puntos(xcm, ycm, x, y);
[dis, ang] = dis_ang (x_ord,y_ord,xcm,ycm);
%% Determinar el primer individuo mas cercano a la direccion
orientacion = 1000;
for i=1:length(ang)
    if theta < ang(i)
        orientacion = ang(i); %Primer angulo, para rotar todo
        break;
    end
    %En el caso de que no hay angulos mayores a la direccion veectorial
    %escogera el primer angulo desde 0°
    if orientacion == 1000
        orientacion = ang(1);
    end
end
%reordenamiento del vector angulos
new_vector = ordenamiento(ang,orientacion); %vector ordenado desde la orientacion como cero grados
disp('referencia');disp(orientacion);disp(new_vector);
disp(ang);
%% generando las varianzas
min_sig = 0.5; %valor minimo del crecimiento de una varianza.
for i=1:length(dis)  
   % tam_y = abs((dis(i))*sin(deg2rad (ang(i))));
    %tam_x = abs((dis(i))*cos(deg2rad (ang(i))));
    sigma_y(i) = abs(dis(i))/2;
    sigma_x(i) = abs(dis(i));
    if sigma_y(i) < min_sig
        sigma_y(i) = min_sig;
    else
        sigma_y(i) = sigma_y(i);
    end
end
% Se le agrega el primer sigma al comienzo.
sigma_x(length(sigma_x)+1)=sigma_x(1);
sigma_y(length(sigma_y)+1)=sigma_y(1);
%Se determinan las distancias para hallar los sigmas intermedios.
for i=1:length(ang)
    if i==length(ang)
        distan(i)=360-ang(i)+ang(1);
    else
        distan(i)=ang(i+1)-ang(i);
    end
end
%se genera un valor de cero al comienzo del arreglo para manerar mejor los
%indices:
j=1;
for i=1:length(distan)+1
    if i==1
        distancias(j)=0;
        j=j+1;
    else
        distancias(j)=distan(i-1);
        j=j+1;
    end
end
%Generacion de el vector de sigmas, para esto se hara un recorrido de 360
%grados con saltos de delta_ang, se comenzara desde el punto mas cercano al
%eje x y ademas contando el angulo desplazado positivamente en sentido
%antihorario.
delta_ang=1;%----------------------------------------------------------------------------------------------
j=2;
k=1;
cont=0;
angulo=0;
for i=1:360
    if i>distancias(j)+angulo
        angulo=distancias(j)+angulo;
        j=j+1;
        k=k+1;
        cont=0;
    end
    t1=distancias(j)-cont;
    t2=cont;
    cont=cont+delta_ang;
    sigma_xx(i) = ((t1/distancias(j))*sigma_x(k)) + ((t2/distancias(j))*sigma_x(k+1));
    sigma_yy(i) = ((t1/distancias(j))*sigma_y(k)) + ((t2/distancias(j))*sigma_y(k+1));
end

% ---------------> Se crea la malla con la cual se hallara la gaussiana <--------------
xpos = abs(max(x))+3;
xneg = abs(min(x))-3;
ypos = abs(max(y))+3;
yneg = abs(min(y))-3;

[xx, yy] = meshgrid((xneg):0.01:(xpos), (yneg):0.01:(ypos));
% ----------------------------------> end malla <--------------------------------------
tam=size(yy);
for i=1:1:tam(1)
    for j=1:1:tam(2)
        theta = atan2(yy(i,j) - ycm, xx(i,j) - xcm); 
        theta = mod(rad2deg (theta), 360);
        alpha = round( theta ); %redondeando se asigna un valor al angulo OJO
        if alpha>=360
            alpha=360;
        end
        if alpha<=1
            alpha=1;
        end
        varianzax(i,j) = sigma_xx(alpha);
        varianzay(i,j) = sigma_yy(alpha);
    end
end
%% Se genera la gaussiana usando el metodo de raphael
rot = deg2rad(orientacion)
a = (cos(rot)^2)./(2*varianzay) + (sin(rot)^2)./(2*varianzax);
b = sin(2*rot)./(4*varianzay) - sin(2*rot)./(4*varianzax);
c = (sin(rot)^2)./(2*varianzay)+ (cos(rot)^2)./(2*varianzax);
f = exp(-(a.*(xx - xcm).^2 + 2*b.*(xx - xcm).*(yy - ycm) + c.*(yy - ycm).^2));
%% Graficas
graficar_personas(xor,yor);
figure 
graficar_personas(x,y);
grid on;
hold on;
contour(xx,yy,f,[0.1,0.1],'LineColor', 'b');
hold on;
contour(xx,yy,f,[0.05,0.05],'LineColor', 'b');
hold on;
contour(xx,yy,f,[0.5,0.5],'LineColor', 'b');
