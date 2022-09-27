% Separa los datos del vector ensayo en dos vectores: u para la entrada
% e y para la salida. Genera además un vector de tiempo y representa
% gráficamente los datos para ver fácilmente si el ensayo es bueno
% para identificar la planta.

t_s = 0.001; % periodo de muestreo

% Crea el vector de tiempos
tam_vec = size(ensayo);
t = 0:t_s:(tam_vec(1)-1)*t_s;

%Obtiene los vectores de entrada y salida.
u = ensayo(:,1);
y = ensayo(:,2);

% Y los representa gráficamente
plot(t,u,t,y);

% por último elimina el offset de la señal de salida, tal como lo requiere
% el estimador del pidTuner
y_sin_offset = y - y(1);
figure(2);
plot(t,y_sin_offset);