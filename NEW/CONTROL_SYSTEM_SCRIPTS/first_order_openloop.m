%%1(b) First Order Equation
% Author: Sourav Dey
% PS Number: 99003785
% Date: 7th April 2021.
% Version: Matlab 2020b.

%% Plant Description
% The Mass-damper first order system is taken as Plant.
% Equation: f= Bv + M v'
% f = force; B= coefficient of friction; M = mass ; v= velocity.
% Values:  B1= 0.4 M1=1000; B2= 0.5 M2= 500; B3= 1.7 M3= 340;


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

clc;
B1= 0.5;
M1= 5;
P = 2;

 sys = tf([P/M1],[1,B1/M1])
 subplot(4,3,1);
 impulse(sys);
 title('Impulse Input for k');
 subplot(4,3,2);
 step(sys);
 title('Step Input for k');
 subplot(4,3,3);
 [z,p,k]= tf2zp([P/M1],[1,B1/M1])
 pzmap(sys)
 subplot(4,3,10);
 bode(sys)
 
 hold on;
 S = stepinfo(sys)
    
sys = tf([P/M1],[1,B1/M1,0])
subplot(4,3,4);
impulse(sys);
title('Impulse Input for 1/s');
subplot(4,3,5);
step(sys);
title('Step Input for 1/s');
subplot(4,3,6);
[z,p,k]= tf2zp([P/M1],[1,B1/M1,0])
pzmap(sys)
 subplot(4,3,11);
 bode(sys)
hold on;
S = stepinfo(sys)
sys = tf([P/M1,0],[1,B1/M1])
subplot(4,3,7);
impulse(sys);
title('Impulse Input for s');
subplot(4,3,8);
step(sys);
title('Step Input for s');
subplot(4,3,9);
[z,p,k]= tf2zp([P/M1,0],[1,B1/M1])
pzmap(sys)
 subplot(4,3,12);
 bode(sys)
hold on;
S = stepinfo(sys)




%% Comparison Analysis:(Speed, Accuracy and stability):
% Rise time of Sys2 is lowest so Sys2 has the highest speed.
% Settling time of Sys2 is lowest so Sys2 is most stable.
