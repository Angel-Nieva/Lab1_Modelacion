ver control


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%         PREGUNTA 1        %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
s = tf('s');

% Función de transferencia para la ecuación 1
H1 = 4*s/(3*s+1)

% Polos lazo abierto ec 1
polosAbierto1 = pole(H1)

% Lazo cerrado de la ecuación 1

cerrado1 = feedback(H1,1)

% Polos lazo cerrado ec 1
polosCerrado1 = pole(cerrado1) 

% Repsuesta al escalón del lazo abierto
figure();
step(H1);
title('Ec 1 respuesta lazo abierto')

% Respuesta al escalón del lazo cerrado
figure();
step(cerrado1);
title('Ec 1 respuesta lazo cerrado');

% Función de transferencia para la ecuación 2

H2 = (7*s-5*s^2+1)/(6*s^2+6*s+3)

% Polos de la función
polosAbierto2 = pole(H2)

% Respuesta al escalón del lazo abierto ecuación 2

figure();
step(H2);
title('Ec 2 rerspuesta lazo abierto');


% Polos del lazo cerrado
polosCerrado2 = pole(cerrado2)

% Lazo cerrado de la ecuación 2
cerrado2 = feedback(H2,1)

% Respuesta al escalón en el tiempo del lazo cerrado
figure();
step(cerrado2)