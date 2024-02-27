%Unidades de tiempo, empezaremos desde antes de que este en existencia el
%huevo de la mariposa, y terminaremos despues de que deje de existir
t = -12:0.1:24;
%inicializamos la function con 0's que significa que para cualquier valor
%de tiempo la funcion sera 0
y = zeros (1,length(t))

%Duracion de cada etapa%
y(t>=0 & t<3)  =1; 
y(t>=3 & t<6)  =2; 
y(t>=6 & t<9)  =3; 
y(t>=9 & t<12) =4;

figure;
plot(t, y, 'b-', 'LineWidth', 2);
axis([0, 12, -1, 4]);
xlabel('Tiempo (unidades arbitrarias)');
ylabel('Etapa del ciclo de vida');
title('Ciclo de vida de una mariposa');
yticks([1, 2, 3,4]);
yticklabels({'Huevo', 'Larva', 'Pupa', 'Adulto'});
grid on;






clear all;






%Intervalos de tiempo (horas)
t = 0:0.1:23;
%amplitud de onda
amp = 3;
%la temperatura mas baja
temperatura_base = 10 + amp;
%formula que depende del tiempo para calcular la temperatura
temperatura = -amp * sin(pi/12 * t) + temperatura_base;

figure;
plot(t, temperatura, 'b-o', 'LineWidth', 2, 'MarkerFaceColor', 'b');
axis([0, 23, 5, 30]); 
xlabel('Hora del día');
ylabel('Temperatura (°C)');
xticks(0:1:23)
title('Variación de la temperatura a lo largo de un día');
grid on;

clear all;

%Frecuencia de la voz(hz)
fs = 500; 
%Duracion de la senal en segundos
duration = 1;
% Frecuencia de la onda senosoidal
f = 440; 
t = linspace(0, duration, fs * duration);
y = sin(2 * pi * f * t);

figure
plot(t, y);
xlabel('Tiempo (segundos)');
ylabel('Amplitud');
title('Representacion digital de voz');

    


