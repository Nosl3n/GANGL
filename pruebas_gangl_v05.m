clc;
clear all;
close all;
%% Se agregan paths
addpath("VERSION_GANGL\");
addpath("VERSION_GANGL\funtions_V01\")
addpath("VERSION_GANGL\funtions_V05\")
%% Generacion de data aleatoria
r=0.3;
li=5;%limite de coordenadas, maximo 5.
limvec=10; %limite del numero de personas.
n = randi([2, limvec]);% Generar un número aleatorio de elementos para el vector (n)
x = li * rand(1, n); % Valores aleatorios
y = li * rand(1, n); % Valores aleatorios
% x= [0.861757375365581 2.07969934997777 0.00357774158763813 2.73270706149441	2.82151418004542];
% y=[0.325336105895703 1.93346886530240 2.52482451662760 4.34286371340010	3.74256300591501];
%% Variables de entrada de la funcion GANGL
GRAF = 0;
per = 1;
%% Funcion gaussiana
figure
Area = GANGL_V05(x,y,GRAF,per);
disp ('Area de la region prohibida');
disp(Area);