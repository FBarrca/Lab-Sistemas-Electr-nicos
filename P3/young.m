e=1e-3; %m
a=23.7e-3; %m 
m=41e-3; %kg
d=111e-3;
wp=7.35*2*pi; %rad/s
L=274.5e-3;


I=a*(e^3)/12;

 E=((wp*(L^2)/(1.875^2))^2)*m/I/L

clear E
syms E

eqn = wp== sqrt(E*I*L/m)*(1.875/L)^2;

S = solve(eqn,E);

E = round(S,2);
fprintf("E = %.2d \n", E)

%% Relación entre peso y deformación

clear P def
syms def P
theta = e*(L-d)/2/I*P;

eqn2 = def/L == theta/E;

S = solve(eqn2,P)


