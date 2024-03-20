function resultante = result(xc,yc,x,y)
    v1 = [x(1) y(1)];
    v2 = [x(2) y(2)];
    % Sumar los vectores al origen (xc, yc)
    v1 = v1 + [xc yc];
    v2 = v2 + [xc yc];
    % Calcular la resultante
    resultante = v1 + v2;
    % Graficar los vectores
    % quiver(xc, yc, v1(1), v1(2), 'b', 'LineWidth', 2); hold on;
    % quiver(xc, yc, v2(1), v2(2), 'r', 'LineWidth', 2);
    % quiver(xc, yc, resultante(1), resultante(2), 'g', 'LineWidth', 2);
    % axis equal;
    % xlabel('Componente x');
    % ylabel('Componente y');
    % title('Vectores y resultante');
    % legend('Vector 1', 'Vector 2', 'Resultante');
    % grid on;
end
