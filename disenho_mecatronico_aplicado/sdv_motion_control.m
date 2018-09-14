% Iniciar Ejecuci�n
clear all
close all
clc


%% Chas�s
n_ruedas = 4; % N�mero de ruedas.
r_rueda = 0.025; % Radio de cada rueda [m]
d_stpms = 0.2;  % Distancia entre STPMs [m]


%% Motores
J  = 0.01;   % Momento de inercia del eje del motor [kg*m^2]
b  = 0.1;    % Fricci�n viscosa del motor [N*m*s]
ke = 0.01;   % Constante de fuerza electromotriz [V/rad/sec]
kt = 0.01;   % Constante de torque del motor [N*m/A]
R  = 1.0;    % Resistencia el�ctrica [Ohm]
L  = 0.5;    % Inductancia el�ctrica [H]

%% Sistema de Transmisi�n de Potencia Mec�nica (STPM)
mod_engranajes = 0.5;

%% Referencias
refI = 12;
refD = 12;

%% Voltaje
v_max = 15;


%% Conjunto Total
W = 20.0; % Peso del SDV [kg]
Wi = W/n_ruedas; % Peso soportado por cada rueda [kg]


thresh_angle = 30*pi/180;
thresh_rho = 0.1;
ka = 10.0;
kb = 10.0;