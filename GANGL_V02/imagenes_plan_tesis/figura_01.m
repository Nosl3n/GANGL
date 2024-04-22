clear all;
close all;
clc;
% Crear una nueva figura
figure;
gaussian2_a2_focussed(0, 0, 0, 0.4, 0.4, 0.4, 0.4);
title('Gráfica de sin(x)');

% Subgráfica 2
figure;
gaussian2_a2_focussed(0, 0, 0, 0.5, 0.3, 0.3, 0.1);
title('Gráfica de cos(x)');

% Subgráfica 3
figure;
gaussian2_a2_focussed(0, 0, 0, 0.6, 0.3, 0.3, 0.6);
title('Gráfica de exp(x)');

% Subgráfica 4
figure;
gaussian2_a2_focussed(0, 0, 0, 0.3, 0.6, 0.6, 0.3);
title('Gráfica de exp(x)');

% Subgráfica 5
figure;
gaussian2_a2_focussed(0, 0, 0, 0.5, 0.2, 0.3, 0.1);
title('Gráfica de log(x+1)');
