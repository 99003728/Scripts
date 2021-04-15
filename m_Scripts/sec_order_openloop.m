%% Second Order MSD Equation
% Author: Mohammed Ijaz
% PS Number: 99003728
% Date: 7th April 2021.
% Version: Matlab 2020b.

%% Plant Description
% The Mass-damper Spring Second order system is taken as Plant.
% It is used in as suspension.

% Equation: Mx''(t)+ Bx'(t) + Kx(t)= Kf(t).
% f = force; B= coefficient of friction; M = mass ; v= velocity; k=spring constant.
% Values: K1= 0.9 B1= 0.4 M1=1000 Wn=0.03 ; K2= 1 B2= 0.5 M2= 500 Wn=0.44; K3= 3 B3= 1.7 M3= 340 Wn=0.09;


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

% K1= 1 B1= 0.5 M1= 500
% P controller:-

% Rise Time :2.5448
% settling time:78.1524
% Overshoot:70.2118
% PeakTime: 7.0248

% I controller:-

% Rise Time :NaN
% settling time:NaN
% Overshoot:NaN
% PeakTime:Inf

% D controller:-

% Rise Time :0
% settling time:81.5509
% Overshoot: Inf
% PeakTime: 3.5124


%% Tool Analysis:

B1= 0.5
M1= 5;
K1 =1;
P=5;
sys = tf([P*K1/M1],[1,B1/M1,K1/M1])
subplot(4,3,1);
impulse(sys);
title('Impulse Input for k');
subplot(4,3,2);
step(sys);
title('Step Input for k');
subplot(4,3,3);
[z,p,k]= tf2zp([P*K1/M1],[1,B1/M1,K1/M1])
pzmap(sys)
subplot(4,3,10);
bode(sys)
hold on;
S = stepinfo(sys)

sys = tf([P*K1/M1],[1,B1/M1,K1/M1,0])
subplot(4,3,4);
impulse(sys);
title('Impulse Input for 1/s');
subplot(4,3,5);
step(sys);
title('Step Input for 1/s');
subplot(4,3,6);
[z,p,k]= tf2zp([P*K1/M1],[1,B1/M1,K1/M1,0])
pzmap(sys)
subplot(4,3,11);
bode(sys)
hold on;
S = stepinfo(sys)

sys = tf([P*K1/M1,0],[1,B1/M1,K1/M1])
subplot(4,3,7);
impulse(sys);
title('Impulse Input for s');
subplot(4,3,8);
step(sys);
title('Step Input for s');
subplot(4,3,9);
[z,p,k]= tf2zp([P*K1/M1,0],[1,B1/M1,K1/M1])
pzmap(sys)
subplot(4,3,12);
bode(sys)
hold on;
S = stepinfo(sys)

%% Comparison Analysis:
%P-Controller:
%Using p controller the system responses doesnt change and only magnitude
%of response is increased and as the poles are complex conjugate and negetive hence system is stable
%I-controller:
%Using I controller a pole is added at zero and  makes the system
%marginally stable so we dont get raise time,settling time and overshoot.
%D-controller:
%Using differentiator controller a zero is added and as we know zero is
%root of the numerator of the transfer function and it introduces a
%pronounced peak to peak system response and hence the systems peak
%overshoot may increase.

%Speed: System 3 is having low raise time and is therefore speed system.
%Stability: Settling time of system of system 1 is less and therefore is
%the stable system.
%Accuracy: Settling time of system of system 1 is less and therefore is
%more accurate.


