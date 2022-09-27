%corrientes en mA
%tensiones en V
%resistencias en kOmios

clc;
clear;
IBmax = 6; %max corriente micro 
VB = 3.3; %tension que da el micro en los pines de salida
ICon = 500; %intensidad que va a circular por C con el transistor encendido
beta = 750;
Vbe = 1.2; %tension base-emisor
fseguridad = 5; %coeficiente de seguridad para asegurar que el transistor satura

IBmin = ICon / beta;

IB = IBmin*fseguridad;

if IB < IBmax
    Rb = (VB - Vbe)/IB

else
    IB = IBmax;
    Rb = (VB - Vbe)/IB

end

