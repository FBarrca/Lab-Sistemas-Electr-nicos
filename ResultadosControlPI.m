load pifinal
ensayo = EnsayoPIFINAL;
t = [0:0.01:2.98];

% Create a figure with the output on top and the drive function at the bottom
hFig = figure

%  Subplot for output
hSub(1) = subplot(2, 1, 1);

hold on
plot(t', ensayo(:, 1))
plot(t', ensayo(:, 3))
title('Entrada y Salida del Sistema de Control PI')
xlabel('Tiempo (s)')
ylabel('Luminosidad (lx)')
legend('Referencia', 'Salida')

%  Subplot for drive function
hSub(2) = subplot(2, 1, 2);
plot(t', ensayo(:, 2))
title('Función de mando')
xlabel('Tiempo (s)')
ylabel('PWM (0/000)')
legend('Mando')
