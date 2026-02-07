clear; clc;

T = [0 10];   % Tiempo simulación
x0 = [0; 0; 0; 0];  % Condiciones iniciales

%% ================= SIMULACIÓN 1 =================
% z(t) = 0.05 sin(0.5 pi t)

[t1, x1] = ode45(@(t,x) Suspension(t,x,1), T, x0);

% -------- Figura 1: x1 y x2 separadas --------
figure(1)

subplot(2,1,1) % Arriba
plot(t1, x1(:,1))
ylabel('x_1 (m)')
title('Masa 1 - z_1(t)')
grid on

subplot(2,1,2) % Abajo
plot(t1, x1(:,2))
ylabel('x_2 (m)')
xlabel('Tiempo (s)')
title('Masa 2 - z_1(t)')
grid on


% -------- Figura 2: x1 y x2 juntas --------
figure(2)

plot(t1, x1(:,1), t1, x1(:,2))
grid on
title('x_1 y x_2 Juntas - z_1(t)')
xlabel('Tiempo (s)')
ylabel('Desplazamiento (m)')
legend('x_1','x_2')


%% ================= SIMULACIÓN 2 =================
% z(t) = 0.05 sin(20 pi t)

[t2, x2] = ode45(@(t,x) Suspension(t,x,2), T, x0);

% -------- Figura 3: x1 y x2 separadas --------
figure(3)

subplot(2,1,1) % Arriba
plot(t2, x2(:,1))
ylabel('x_1 (m)')
title('Masa 1 - z_2(t)')
grid on

subplot(2,1,2) % Abajo
plot(t2, x2(:,2))
ylabel('x_2 (m)')
xlabel('Tiempo (s)')
title('Masa 2 - z_2(t)')
grid on


% -------- Figura 4: x1 y x2 juntas --------
figure(4)

plot(t2, x2(:,1), t2, x2(:,2))
grid on
title('x_1 y x_2 Juntas - z_2(t)')
xlabel('Tiempo (s)')
ylabel('Desplazamiento (m)')
legend('x_1','x_2')
