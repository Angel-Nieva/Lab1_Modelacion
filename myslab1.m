    ver control
s = tf('s');

% Función de transferencia para la ecuación 1
H1 = 4*s/(3*s+1)

% Lazo cerrado de la ecuación 1

l1 = feedback(H1,1)

% Respuesta al escalón en el tiempo
figure();
step(l1)

% Función de transferencia para la ecuación 2

H2 = (7*s-5*s^2+1)/(6*s^2+6*s+3)

% Lazo cerrado de la ecuación 2

figure();
l2 = feedback(H1,1)

% Respuesta al escalón en el tiempo
step(l2)
