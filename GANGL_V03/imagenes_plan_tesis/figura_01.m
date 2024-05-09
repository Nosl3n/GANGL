clear all;
close all;
clc;
% Crear una nueva figura  C ́ırculos
%Concentricos "CC", Ovoide, Elipse Frontal “EF”, Elipse Sagital “ES” y Lado Dominante “LD”.
figure;
gaussian2_a2(0, 0, 0, 0.4, 0.4, 0.4, 0.4);
hold on;
graf_personas(0,0,0);
title('Círculos Concéntricos');

% Subgráfica 2
figure;
gaussian2_a2(0, 0, 0, 0.6, 0.3, 0.3, 0.1);
hold on;
graf_personas(0,0,0);
title('Ovoide');

% Subgráfica 3
figure;
gaussian2_a2(0, 0, 0, 0.6, 0.2, 0.2, 0.6);
hold on;
graf_personas(0,0,0);
title('Elipse Frontal');

% Subgráfica 4
figure;
gaussian2_a2(0, 0, 0, 0.2, 0.6, 0.6, 0.2);
hold on;
graf_personas(0,0,0);
title('Elipse Sagital');

% Subgráfica 5
figure;
gaussian2_a2(0, 0, 0, 0.6, 0.5, 0.2, 0.1);
hold on;
graf_personas(0,0,0);
title('Lado Dominante');
