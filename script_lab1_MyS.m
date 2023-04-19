clear clc

% Ejecución de librerías
ver control

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%         PREGUNTA 2        %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Definicíon de parámetro s
s = tf('s');

% Definicion de cada funcion de transferencia
F1 = (4*s)/(10*s^2 + 4);
F2 = 3/(6*s + 16);
F3 = (4*s + 10)/(4*s^3 + 9*s^2 + 5*s);
F4 = 1/(7*s + 10);
F5 = (8*s + 8)/(s^3 + 2*s^2 + 3*s);
F6 = (3*s + 2)/(5*s^2 + 7*s + 10);

% Desarrollo de respuesta del escalón
r1 = feedback (F3,1,1); %En este caso: feedback (Funcion 3, vacio, retroalimentación positiva)
r2 = (F4+F5)*r1
r3 = F6 * r2;

% Solución de la respuesta del escalón
Y = F1 + F2 + r3

% Gráfico de la respuesta del escalón
step(Y)