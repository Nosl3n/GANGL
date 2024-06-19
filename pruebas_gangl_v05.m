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
%% Variables de entrada de la funcion GANGL
GRAF = 0;
per = 1;
%% Funcion gaussiana
GANGL_V05(x,y,GRAF,per);