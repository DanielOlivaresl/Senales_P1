tiempo = 0:0.1:60;

% Simula la velocidad (m/s)
% Usamos una combinación de una tendencia lineal y una función sinusoidal
% para simular cambios en la velocidad.
baseVelocidad = 0.1 * tiempo; 
fluctuacion = 2 * sin(0.2 * pi * tiempo); 
% Velocidad total como la suma de la base y la fluctuación
velocidad = baseVelocidad + fluctuacion;

% Visualización de la velocidad
figure; 
plot(tiempo, velocidad, 'r-', 'LineWidth', 2); 
title('Velocidad en función del Tiempo');
xlabel('Tiempo (s)');
ylabel('Velocidad (m/s)');
grid on;
xlim([0, 60]); 
