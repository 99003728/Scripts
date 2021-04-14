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

B1= ([0.1 0.5 1.7]);
M1=([1000 5 340]);M1=([1000 5 340]);
K1 = ([0.9 1 3]);
for i=1:3
    sys = tf([K1(i)/M1(i)],[1,B1(i)/M1(i),K1(i)/M1(i)])
    figure(i);
    subplot(2,1,1);
    impulse(sys);
    title('Impulse Input');
    subplot(2,1,2);
    step(sys);
    title('Step Input');
    [z,p,k]= tf2zp([K1(i)/M1(i)],[1,B1(i)/M1(i),K1(i)/M1(i)])
    figure(4);
    zplane(z,p);
    xlim([-5*1e5 3*1e5]);
    ylim([-5*1e5 3*1e5]);
    hold on;
    S = stepinfo(sys)
end


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


