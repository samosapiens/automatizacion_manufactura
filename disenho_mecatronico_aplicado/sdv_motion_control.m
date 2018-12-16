%% Dise�o Axiom�tico Aplicado
% An�lisis ingenieril por la metodolog�a de dise�o axiom�tico para realiar
% un modelo del robot SDV del laboratorio LabFabEx de la Universidad
% Nacional de Colombia, sede Bogot�.

% Inicio de Programa
clear all
close all
clc

%% Par�metros Mec�nicos
% Mec�nicos
n_ruedas = 4;           % N�mero de ruedas.
r_rueda = 0.025;        % Radio de cada rueda [m]
d_stpms = 0.2;          % Distancia entre STPMs [m]
mod_engranajes = 0.5;   % Relaci�n STPM

% El�ctricas
v_max = 18;             % Voltaje m�ximo de alimentaci�n [V]

% Electromec�nicos (Motores)
J  = 0.01;              % Momento de inercia del eje del motor [kg*m^2]
b  = 0.1;               % Fricci�n viscosa del motor [N*m*s]
ke = 0.1;               % Constante de fuerza electromotriz [V/rad/sec]
kt = 0.1;               % Constante de torque del motor [N*m/A]
R  = 1.0;               % Resistencia el�ctrica [Ohm]
L  = 0.5;               % Inductancia el�ctrica [H]

% Sistemas de Control
ka = 5.0;              % Ganancia velocidad lineal
kb = 5.0;              % Ganancia velocidad angular
thresh_rho = 0.1;       % Cota m�xima del error de posici�n [m]
thresh_ang = 30*pi/180; % Cota m�xima del error de orientaci�n [rad]

% F�sicas
W = 20.0;               % Peso del SDV [kg]
Wi = W/n_ruedas;        % Peso soportado por cada rueda [kg]

%% Ejecutar el Modelo de Simulink
open_system('SDV.slx');
sim('SDV.slx');
