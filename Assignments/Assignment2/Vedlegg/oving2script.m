% Parameters
T = 1;
K = 1;
l = 1;

% Variables
y_0 = 0;

% Time
stop_T = 15;
max_dt = 0.01;

%Force
u = 1;

OUT = sim("oving2d");
y = OUT.y.Data; %Creates a vector of data from y
t = OUT.tout; %Vector of timesteps
r = OUT.r.Data;

%Plot

fig = figure;

plot(t,y,"k",t,r,"--k");
grid on;
grid minor;

xlabel("t[s]"); ylabel("y(t)");
xlim( [0 10] ); ylim( [-0.1, 1.1] );
legend("y","r");
title("Øving 2 | Oppgave 1d");

dim = [200 200 500 300]; %x_pos, y_pos, bredde, høyde
set(fig,"renderer","painters","position",dim,"PaperPositionMode","auto");
print("-dpng","-r600","D:\Google Drive\NTNU\4. SEMESTER\TTK4105 - REGTEK\OVINGER\Oving2\oppgave1d");