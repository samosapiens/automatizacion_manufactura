%% Diseño Axiomático Aplicado
% Análisis ingenieril por la metodología de diseño axiomático para realiar
% un modelo del robot SDV del laboratorio LabFabEx de la Universidad
% Nacional de Colombia, sede Bogotá.

% Inicio de Programa
clear all
close all
clc

%% Parámetros Mecánicos
% Mecánicos
n_ruedas = 4;           % Número de ruedas.
r_rueda = 0.025;        % Radio de cada rueda [m]
d_stpms = 0.2;          % Distancia entre STPMs [m]
mod_engranajes = 0.5;   % Relación STPM

% Eléctricas
v_max = 18;             % Voltaje máximo de alimentación [V]

% Electromecánicos (Motores)
J  = 0.01;              % Momento de inercia del eje del motor [kg*m^2]
b  = 0.1;               % Fricción viscosa del motor [N*m*s]
ke = 0.1;               % Constante de fuerza electromotriz [V/rad/sec]
kt = 0.1;               % Constante de torque del motor [N*m/A]
R  = 1.0;               % Resistencia eléctrica [Ohm]
L  = 0.5;               % Inductancia eléctrica [H]

% Sistemas de Control
ka = 5.0;              % Ganancia velocidad lineal
kb = 5.0;              % Ganancia velocidad angular
thresh_rho = 0.1;       % Cota máxima del error de posición [m]
thresh_ang = 30*pi/180; % Cota máxima del error de orientación [rad]

% Físicas
W = 20.0;               % Peso del SDV [kg]
Wi = W/n_ruedas;        % Peso soportado por cada rueda [kg]

%% Ejecutar el Modelo de Simulink
open_system('SDV.slx');
sim('SDV.slx');
