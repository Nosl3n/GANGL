clc; clear all; close all;
%% Circulos concentricos
figure
graf_personas(0,0,0);
hold on;
gaussian2_a2_focussed(0, 0, 0, 1, 1, 1, 1);
%title('Concentric Circles');
legend( 'Person', 'Direction', 'Social Zone', 'Personal Zone','Intimate zone', 'FontSize', 15);
xlim([-0.8, 0.8]);
ylim([-0.8, 0.8]);
grid on;
figure
graf_personas(0,0,0);
hold on;
gaussian2_a2_focussed(0, 0, 0, 1, 0.5, 0.5, 0.3);
%title(['Egg Shape']);
legend( 'Person', 'Direction', 'Social Zone', 'Personal Zone','Intimate zone', 'FontSize', 15);
xlim([-0.8, 0.8]);
ylim([-0.8, 0.8]);
grid on;
figure
graf_personas(0,0,0);
hold on;
gaussian2_a2_focussed(0, 0, 0, 1, 0.4, 0.4, 1);
%title('Ellipse Shape (a)');
legend( 'Person', 'Direction', 'Social Zone', 'Personal Zone','Intimate zone', 'FontSize', 15);
xlim([-0.8, 0.8]);
ylim([-0.8, 0.8]);
grid on;
figure
graf_personas(0,0,0);
hold on;
gaussian2_a2_focussed(0, 0, 0, 0.4, 1, 1, 0.4);
%title('Ellipse Shape (b)');
legend( 'Person', 'Direction', 'Social Zone', 'Personal Zone','Intimate zone', 'FontSize', 15);
xlim([-0.8, 0.8]);
ylim([-0.8, 0.8]);
grid on;
figure
graf_personas(0,0,0);
hold on;
gaussian2_a2_focussed(0, 0, 0, 1, 0.6, 0.3, 0.3);
%title('Dominant Side');
legend( 'Person', 'Direction', 'Social Zone', 'Personal Zone','Intimate zone', 'FontSize', 15);
xlim([-0.8, 0.8]);
ylim([-0.8, 0.8]);
grid on;