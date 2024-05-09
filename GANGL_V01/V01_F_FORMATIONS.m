clc;
clear all;
close all;
addpath("funtions/");
%% Distribución "A" de personas según las F-formations.
x1=2; x2=2.6;
y1=1; y2=0;
theta1=0;
theta2=90;
x=[x1, x2];
X=[x1+3, x2+3];
y=[y1, y2];
theta=[theta1,theta2];
% -------------------------- GRAFICA
figure (1)
graficar_personas(x,y);
hold on;
GANGL_V01(X,y,0,1);
hold on;
gaussian2_a2_focussed(x1, y1, deg2rad(theta1) , 0.6, 0.3, 0.3, 0.1);
hold on;
gaussian2_a2_focussed(x2, y2, deg2rad(theta2) , 0.6, 0.3, 0.3, 0.1);
grid on;
xlabel('Coordenada X');
ylabel('Coordenada Y');
title('Distribución del tipo A de las f-formations');
%% Distribución "B" de personas según las F-formations.
x1=6; x2=5;
y1=4; y2=4;
theta1=180;
theta2=0;
x=[x1, x2];
X=[x1+6, x2+6];
y=[y1, y2];
theta=[theta1,theta2];
figure (2)
graficar_personas(x,y);
hold on;
GANGL_V01(X,y,0,1);
hold on;
gaussian2_a2_focussed(x1, y1, deg2rad(theta1) , 0.6, 0.3, 0.3, 0.1);
hold on;
gaussian2_a2_focussed(x2, y2, deg2rad(theta2) , 0.6, 0.3, 0.3, 0.1);
hold on;
xlabel('Coordenada X');
ylabel('Coordenada Y');
title('Distribución del tipo B de las f-formations');
%% Distribución "C" de personas según las F-formations.
x1=6; x2=5;
y1=4; y2=4;
theta1=90;
theta2=90;
x=[x1, x2];
X=[x1+6, x2+6];
y=[y1, y2];
theta=[theta1,theta2];
figure (3)
graficar_personas(x,y);
hold on;
GANGL_V01(X,y,0,1);
hold on;
gaussian2_a2_focussed(x1, y1, deg2rad(theta1) , 0.6, 0.3, 0.3, 0.1);
hold on;
gaussian2_a2_focussed(x2, y2, deg2rad(theta2) , 0.6, 0.3, 0.3, 0.1);
hold on;
xlabel('Coordenada X');
ylabel('Coordenada Y');
title('Distribución del tipo C de las f-formations');

%% Distribución de D personas según las F-formations.
x1=1; x2=2; x3=3;
y1=3; y2=2; y3=3;
theta1=30;
theta2=90;
theta3=150;
x=[x1, x2, x3];
X=[x1+6, x2+6 ,x3+6];
y=[y1, y2, y3];
theta=[theta1,theta2,theta3];
figure (4)
graficar_personas(x,y);
hold on;
GANGL_V01(X,y,0,1);
hold on;
gaussian2_a2_focussed(x1, y1, deg2rad(theta1) , 0.6, 0.3, 0.3, 0.1);
hold on;
gaussian2_a2_focussed(x2, y2, deg2rad(theta2) , 0.6, 0.3, 0.3, 0.1);
hold on;
gaussian2_a2_focussed(x3, y3, deg2rad(theta3) , 0.6, 0.3, 0.3, 0.1);
grid on;
xlabel('Coordenada X');
ylabel('Coordenada Y');
title('Distribución del tipo D de las f-formations');

%% Distribución de E personas según las F-formations.
x1=1; x2=2; x3=3;
y1=3; y2=4; y3=3;
theta1=30;
theta2=270;
theta3=150;
x=[x1, x2, x3];
X=[x1+6, x2+6 ,x3+6];
y=[y1, y2, y3];
theta=[theta1,theta2,theta3];
figure (5)
graficar_personas(x,y);
hold on;
GANGL_V01(X,y,0,1);
hold on;
gaussian2_a2_focussed(x1, y1, deg2rad(theta1) , 0.6, 0.3, 0.3, 0.1);
hold on;
gaussian2_a2_focussed(x2, y2, deg2rad(theta2) , 0.6, 0.3, 0.3, 0.1);
hold on;
gaussian2_a2_focussed(x3, y3, deg2rad(theta3) , 0.6, 0.3, 0.3, 0.1);
hold on;
xlabel('Coordenada X');
ylabel('Coordenada Y');
title('Distribución del tipo E de las f-formations');

%% Distribución de F personas según las F-formations.
x1=1; x2=1; x3=4;
y1=3; y2=5; y3=4;
theta1=30;
theta2=300;
theta3=180;
x=[x1, x2, x3];
X=[x1+6, x2+6 ,x3+6];
y=[y1, y2, y3];
theta=[theta1,theta2,theta3];
figure (6)
graficar_personas(x,y);
hold on;
GANGL_V01(X,y,0,1);
hold on;
gaussian2_a2_focussed(x1, y1, deg2rad(theta1) , 0.6, 0.3, 0.3, 0.1);
hold on;
gaussian2_a2_focussed(x2, y2, deg2rad(theta2) , 0.6, 0.3, 0.3, 0.1);
hold on;
gaussian2_a2_focussed(x3, y3, deg2rad(theta3) , 0.6, 0.3, 0.3, 0.1);
hold on;
xlabel('Coordenada X');
ylabel('Coordenada Y');
title('Distribución del tipo F de las f-formations');

%% Distribución de F personas según las F-formations.
x1=1; x2=1.2; x3=4;
y1=3; y2=5; y3=4.5;
theta1=30;
theta2=300;
theta3=180;
x=[x1, x2, x3];
X=[x1+6, x2+6 ,x3+6];
y=[y1, y2, y3];
theta=[theta1,theta2,theta3];
figure (7)
graficar_personas(x,y);
hold on;
GANGL_V01(X,y,0,1);
hold on;
gaussian2_a2_focussed(x1, y1, deg2rad(theta1) , 0.6, 0.3, 0.3, 0.1);
hold on;
gaussian2_a2_focussed(x2, y2, deg2rad(theta2) , 0.6, 0.3, 0.3, 0.1);
hold on;
gaussian2_a2_focussed(x3, y3, deg2rad(theta3) , 0.6, 0.3, 0.3, 0.1);
hold on;
xlabel('Coordenada X');
ylabel('Coordenada Y');
title('Distribución del tipo F de las f-formations');
