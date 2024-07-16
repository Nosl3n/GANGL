% Crear una tabla en Excel con valores determinados por el usuario
filename = 'resultados.xlsx';  % Nombre del archivo Excel
sheet = 1;  % Número de hoja
% Definir las cabeceras de la tabla
headers = {'Numero de Personas', 'Area Paco', 'Area Raphael', 'Porcentaje de Espacio'};
% Escribir las cabeceras en el archivo Excel
xlswrite(filename, headers, sheet, 'A1');
% Número de filas que el usuario quiere ingresar
numRows = 10;
%% inicializando vectores
persona = zeros (1,numRows);
area_paco = zeros (1,numRows);
area_raphael = zeros (1,numRows);
porcentaje_area = zeros (1,numRows);
%% Condiciones iniciales
vista = 2;
GRAF = 0;
per = 1;
li=5;%limite de coordenadas, maximo 5.
limvec=10; %limite del numero de personas.
%% Inicializar matriz para almacenar los datos
for i=1:numRows
    %% se genera las personas:
    n = randi([2, limvec]);% Generar un número aleatorio de elementos para el vector (n)
    x = li * rand(1, n); % Valores aleatorios
    y = li * rand(1, n); % Valores aleatorios
    persona (i) = n;
    %% Se determina las areas
    area_paco (i) = GANGL_V05(x,y,GRAF,vista,per);
    area_raphael (i) = raphael_model(GRAF,x,y);
    %% Se determina el porsentaje de area ahorrada
    porcentaje_area (i) = 100 - (area_paco(i)*100)/area_raphael(i);
    % Redondear los valores a dos decimales
    area_paco(i) = round(area_paco(i), 2);
    area_raphael(i) = round(area_raphael(i), 2);
    porcentaje_area(i) = round(porcentaje_area(i), 2);
    disp(i);
end
% Bucle para ingresar los datos
for i = 1:numRows
    data(i, 1) = persona (i);
    data(i, 2) = area_paco(i);
    data(i, 3) = area_raphael(i);
    data(i, 4) = porcentaje_area(i);
end
% Escribir los datos en el archivo Excel
xlswrite(filename, data, sheet, 'A2');
disp('Datos escritos exitosamente en el archivo Excel.');