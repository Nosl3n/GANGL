% Simulación para verificar las condiciones en la función orientacion_vec

% Número de valores aleatorios
n = 1000;

% Generar valores aleatorios para cmx y cmy en el rango [-100, 100]
valores_cmx = randi([-100, 100], 1, n);
valores_cmy = randi([-100, 100], 1, n);

% Inicializar una variable para contar las veces que se ejecuta el else
contador_else_x = 0;
contador_else_y = 0;

for i = 1:length(valores_cmx)
    for j = 1:length(valores_cmy)
        cmx = valores_cmx(i);
        cmy = valores_cmy(j);
        
        % Verificar condición para cmx
        if cmx - cmx == 0
            xmove = -cmx;
        else
            xmove = cmx;
            contador_else_x = contador_else_x + 1;
        end

        % Verificar condición para cmy
        if cmy - cmy == 0
            ymove = -cmy;
        else
            ymove = cmy;
            contador_else_y = contador_else_y + 1;
        end
    end
end

% Resultados de la simulación
fprintf('Número de veces que se ejecutó el else para cmx: %d\n', contador_else_x);
fprintf('Número de veces que se ejecutó el else para cmy: %d\n', contador_else_y);
