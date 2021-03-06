%% Second Order MSD Equation
% Author: Sourav Dey
% PS Number: 99003785
% Date: 7th April 2021.
% Version: Matlab 2020b.

%% Plant Description
% The Mass-damper Spring Second order system is taken as Plant.
% It is used in as suspension.

% Equation: Mx''(t)+ Bx'(t) + Kx(t)= Kf(t).
% f = force; B= coefficient of friction; M = mass ; v= velocity; k=spring constant.
% Values: K1= 0.9 B1= 0.4 M1=1000 Wn=0.03 ; K2= 1 B2= 0.5 M2= 500 Wn=0.44; K3= 3 B3= 1.7 M3= 340 Wn=0.09;

%% Code:
%For negative feedback
B1= 0.5
M1= 5;
K1 =1;
P=5;

sys = tf([P*K1],[M1,B1,2*K1])
subplot(4,4,1);
impulse(sys);
title('Impulse Input for k');
subplot(4,4,2);
step(sys);
title('Step Input for k');
subplot(4,4,3);
[z,p,k]= tf2zp([P*K1],[M1,B1,2*K1])
pzmap(sys)
subplot(4,4,4)
bode(sys)
margin(sys)
[Gm,Pm,Wcg,Wcp] = margin(sys)

hold on;
S = stepinfo(sys)

B2= -9
M2= 5;
K2=1;
P2=5;

sys = tf([P2*K2],[M2,B2,2*K2])
subplot(4,4,5);
impulse(sys);
title('Impulse Input for k- Unstable');
subplot(4,4,6);
step(sys);
title('Step Input for k- Unstable');
subplot(4,4,7);
[z,p,k]= tf2zp([P2*K2],[M2,B2,2*K2])
pzmap(sys)
subplot(4,4,8)
bode(sys)
margin(sys)
[Gm,Pm,Wcg,Wcp] = margin(sys)
hold on;
S = stepinfo(sys)

% For Positive feedback using I & D

B3= 9
M3= 5;
K3=1;


sys = tf([K3],[M3,B3,0,0])
subplot(4,4,9);
impulse(sys);
title('Impulse Input for Positive feedback 1/s ');
subplot(4,4,10);
step(sys);
title('Step Input for Positive feedback 1/s');
subplot(4,4,11);
[z,p,k]= tf2zp([K3],[M3,B3,0,0])
pzmap(sys)
subplot(4,4,12)
bode(sys)
margin(sys)
[Gm,Pm,Wcg,Wcp] = margin(sys)
hold on;
S = stepinfo(sys)


B4= 9
M4= 5;
K4=1;


sys = tf([K4,0],[M4,B4,0])
subplot(4,4,13);
impulse(sys);
title('Impulse Input for Positive feedback s ');
subplot(4,4,14);
step(sys);
title('Step Input for Positive feedback s');
subplot(4,4,15);
[z,p,k]= tf2zp([K4,0],[M4,B4,0])
pzmap(sys)
subplot(4,4,16)
bode(sys)
margin(sys)
[Gm,Pm,Wcg,Wcp] = margin(sys)
hold on;
S = stepinfo(sys)

%% Math Analysis:
% Independent: Time(t)
% Dependent: Velocity(v) and Force(f)
% Constant: Mass(M), Frictional Coefficient(B), Spring constant(K)

% Roots:((-B/M)+-sqrt(sq(B/M)-4K/M))/2

% Poles and Zero Calculation:


% IVT:
% 1. For step input: 0
% 2. For impulse input: 0

% FVT:
% 1. For step input: 1
% 2. For impulse input: K/M

% Time Response Results:
% K1= 0.9 B1= 0.4 M1=1000
% Rise Time :
% settling time:
% Overshoot:
% Undershoot:
% PeakTime:

%K2= 1 B2= 0.5 M2= 500
% Rise Time :
% settling time:
% Overshoot:
% Undershoot:
% PeakTime:

%K3= 3 B3= 1.7 M3= 340
% Rise Time :
% settling time:
% Overshoot:
% Undershoot:
% PeakTime:



%% Tool Analysis:


%% Comparison Analysis:(Speed, Accuracy and stability):
% Rise time of Sys1 is lowest so Sys1 has the highest speed.
% Settling time of Sys2 is lowest so Sys2 is most stable.


