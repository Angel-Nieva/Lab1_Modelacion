ver control


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%         PREGUNTA 1        %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
s = tf('s');

% Función de transferencia para la ecuación 1
H1 = 4*s/(3*s+1)

% Polos, ceros, K y T de lazo abierto ec 1
polosAbierto1 = pole(H1)
cerosAbierto1 = zero(H1)
K_Abierto1 = dcgain(H1)
T_Abierto1 = stepinfo(H1).SettlingTime

% Lazo cerrado de la ecuación 1

cerrado1 = feedback(H1,1)

% Polos, ceros, K y T de lazo cerrado ec 1
polosCerrado1 = pole(cerrado1) 
cerosCerrado1 = zero(cerrado1)
K_Cerrado1 = dcgain(cerrado1)
T_Cerrado1 = stepinfo(cerrado1).SettlingTime

% Repsuesta al escalón del lazo abierto
figure();
step(H1);
title('Ec 1 respuesta lazo abierto')

% Respuesta al escalón del lazo cerrado
figure();
step(cerrado1);
title('Ec 1 respuesta lazo cerrado');

% Función de transferencia para la ecuación 2

H2 = (5*s^2+7*s+1)/(s^2+6*s+3)

% Polos y ceros de la función 2
polosAbierto2 = pole(H2)
cerosAbierto2 = zero(H2)
K_Abierto2 = dcgain(H2)
T_Abierto2 = stepinfo(H2).SettlingTime

% Respuesta al escalón del lazo abierto ecuación 2

figure();
step(H2);
title('Ec 2 rerspuesta lazo abierto');



% Lazo cerrado de la ecuación 2
cerrado2 = feedback(H2,1)

% Polos y ceros del lazo cerrado
polosCerrado2 = pole(cerrado2)
cerosCerrado2 = zero(cerrado2)
K_Cerrado2 = dcgain(cerrado2)
T_Cerrado2 = stepinfo(cerrado2).SettlingTime


% Respuesta al escalón en el tiempo del lazo cerrado
figure();
step(cerrado2)

