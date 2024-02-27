% Define el tiempo en meses
meses = 1:1:12; 
% Supongamos que la temperatura varía de -10 a 30 grados Celsius a lo largo del año
amplitudTemp = 20; % Amplitud de la variación de la temperatura
mediaTemp = 10; % Temperatura media anual
temperatura = amplitudTemp * sin(2 * pi * (meses-3) / 12) + mediaTemp; % Desfase para alinear el pico con el verano

% Visualización de la temperatura
figure; 
plot(meses, temperatura, 'r-', 'LineWidth', 2); 
title('Temperatura a lo largo del año');
xlabel('Mes');
ylabel('Temperatura (°C)');
grid on;
ylim([-15, 35]); % Limita el rango de temperatura 
xticks(1:12);
xticklabels({'Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'});

% Visualización de las precipitaciones
figure; 
plot(meses, precipitaciones, 'b-', 'LineWidth', 2); 
title('Precipitaciones a lo largo del año');
xlabel('Mes');
ylabel('Precipitaciones (mm)');
grid on;
ylim([0, 120]); 
xticks(1:12);
xticklabels({'Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'});
