%%1(b) First Order Equation
% Author: Mohammed Ijaz
% PS Number: 99003728
% Date: 7th April 2021.
% Version: Matlab 2020b.

%% Plant Description
% The Mass-damper first order system is taken as Plant.
% Equation: f= Bv + M v'
% f = force; B= coefficient of friction; M = mass ; v= velocity.
% Values:  B1= 0.4 M1=1000; B2= 0.5 M2= 500; B3= 1.7 M3= 340;

%% Code:

%Negative Feedback using gain input
clc;
B1= 0.5;
M1= 5;
P = 2;

sys = tf([P],[M1,B1+1])
subplot(4,4,1);
impulse(sys);
title('Impulse Input for k');
subplot(4,4,2);
step(sys);
title('Step Input for k');
subplot(4,4,3);
[z,p,k]= tf2zp([P],[M1,B1+1])
pzmap(sys)
subplot(4,4,4)
bode(sys)
margin(sys)
[Gm,Pm,Wcg,Wcp] = margin(sys)
hold on;
S = stepinfo(sys)

B2= -2;
M2= 5;
P2 = 2;

sys = tf([P2],[M2,B2+1])
subplot(4,4,5);
impulse(sys);
title('Impulse Input for k-Unstable');
subplot(4,4,6);
step(sys);
title('Step Input for k-Unstable');
subplot(4,4,7);
[z,p,k]= tf2zp([P2],[M2,B2+1])
pzmap(sys)
subplot(4,4,8)
bode(sys)
margin(sys)
[Gm,Pm,Wcg,Wcp] = margin(sys)
hold on;
S = stepinfo(sys)

%Positive Feedback using integral input
B3= 0.8;
M3= 5;


sys = tf([1],[M3,B3-1,0])
subplot(4,4,9);
impulse(sys);
title('Step Input for Positive feedback');
subplot(4,4,10);
step(sys);
title('Step Input for Positive feedback');
subplot(4,4,11);
[z,p,k]= tf2zp([1],[M3,B3-1,0])
pzmap(sys)
subplot(4,4,12)
bode(sys)
margin(sys)
[Gm,Pm,Wcg,Wcp] = margin(sys)
hold on;
S = stepinfo(sys)

%Positive Feedback using differentiator input
B4= 0.8;
M4= 5;


sys = tf([1,0],[M4,B4-1])
subplot(4,4,13);
impulse(sys);
title('Step Input for Positive feedback');
subplot(4,4,14);
step(sys);
title('Step Input for Positive feedback');
subplot(4,4,15);
[z,p,k]= tf2zp([1,0],[M4,B4-1])
pzmap(sys)
subplot(4,4,16)
bode(sys)
margin(sys)
[Gm,Pm,Wcg,Wcp] = margin(sys)
hold on;
S = stepinfo(sys)



%% Math Analysis
% Independent: Time(t)
% Dependent: Velocity(v) and Force(f)
% Constant: Mass(M) and Frictional Coefficient(B)

% Roots:(-B)/M

% Poles and Zero Calculation:

% IVT:
% 1. For step input: 0
% 2. For impulse input: 1/M

% FVT:
% 1. For step input: 1/B
% 2. For impulse input: 0

% Time Response Results:
% Rise Time :4tau = (4M)/B; where tau = M/B 

%% Tool Analysis:


%% Comparison Analysis:(Speed, Accuracy and stability):
% Rise time of Sys2 is lowest so Sys2 has the highest speed.
% Settling time of Sys2 is lowest so Sys2 is most stable.
