%% Parámetros modelo cuarto de suspensión

m1 = 290;        % kg  (masa suspendida)
m2 = 59;         % kg  (masa no suspendida)

b1 = 1000;       % Ns/m  (amortiguador)

k1 = 16182;      % N/m  (resorte suspensión)
k2 = 19000;      % N/m  (resorte llanta)

f  = 0;          % Fuerza actuador

%% Entradas del camino

z1 = .5*pi;    % Baja frecuencia
z2 = 20*pi;     % Alta frecuencia
