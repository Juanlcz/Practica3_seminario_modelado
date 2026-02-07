function dx = Suspension(t, x, tipo_z)

% Parámetros
m1 = 290;       % kg
m2 = 59;        % kg
b1 = 1000;      % Ns/m
k1 = 16182;     % N/m
k2 = 19000;     % N/m
f  = 0;         % N

% Entrada z(t)
if tipo_z == 1
    z = 0.05*sin(0.5*pi*t);
else
    z = 0.05*sin(20*pi*t);
end

% Vector de estados
dx = zeros(4,1);

% Estados
x1 = x(1);
x2 = x(2);
x3 = x(3);
x4 = x(4);

% x1 punto
dx(1) = x3;

% x2 punto
dx(2) = x4;

% x3 punto (aceleración masa m1)
dx(3) = ( -b1*(x3 - x4) - k1*(x1 - x2) + f ) / m1;

% x4 punto (aceleración masa m2)
dx(4) = (  b1*(x3 - x4) + k1*(x1 - x2) ...
          - k2*(x2 - z) - f ) / m2;

end
