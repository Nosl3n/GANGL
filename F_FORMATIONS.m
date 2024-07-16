clc;
clear all;
close all;
addpath("VERSION_GANGL\");
addpath("VERSION_GANGL\funtions_V01\")
addpath("VERSION_GANGL\funtions_V05\")
vista = 2;
GRAF = 1;
per = 1;
%% caso con dos personas
x=[2, 3];
y=[1, 0];
figure
subplot(1, 2, 1);
GANGL_V05(x,y,GRAF,vista,per);
title('Paco Gaussian Function');
% Seleccionar el segundo cuadrante
subplot(1, 2, 2);
raphael_model(GRAF,x,y);
title('Raphel Gaussian Function ');
%% caso con tres personas
x=[1, 1, 4];
y=[3, 5, 4];
figure
subplot(1, 2, 1);
GANGL_V05(x,y,GRAF,vista,per);
title('Paco Gaussian Function');
% Seleccionar el segundo cuadrante
subplot(1, 2, 2);
raphael_model(GRAF,x,y);
title('Raphel Gaussian Function ');
%% caso con cuatro personas
x=[1, 1, 4, 4];
y=[3, 6 ,6, 3];
figure
subplot(1, 2, 1);
GANGL_V05(x,y,GRAF,vista,per);
title('Paco Gaussian Function');
% Seleccionar el segundo cuadrante
subplot(1, 2, 2);
raphael_model(GRAF,x,y);
title('Raphel Gaussian Function ');