clc; clear all; close all;
x=[0.5 0.5 -0.5 -0.5];
y=[0.5 -0.5 -0.5 0.5];
theta=[220 130 45 320];
graf_personas(x,y,theta)
gaussian2(0, 0, 0, 1, 1, 1, 1);
xx=[0.8 0.9];
yy=[0.8 -0.8];
graf_per(xx,yy,[45 350]);
xlim([-1.2, 1.2]);
ylim([-1.2, 1.2]);
