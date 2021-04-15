%% Second Order PID controller:
% Author: Mohammed Ijaz
% PS Number: 99003728
% Date: 7th April 2021.
% Version: Matlab 2020


%% Second Order System PID 
B1= 0.5
M1= 5;
K1 =1;
P1=5;

sys1 = tf([P1*K1],[M1,B1,2*K1])
pidTuner(sys1)

 

%% Analysis of Second Order system with PID controllers


% PI Controller
% Ideal values given by the pid tuner:
% Kp =0 Ki =0.0174
% Rise time=50.4s
% Settling time= 93.4s
% Overshoot= 0.00872%


% To make 0% overshoot we are decreasing the speed of the system


% The new values are given below:
% Kp =0 Ki =0.015
% Rise time=51.1s
% Settling time= 94.3s
% Overshoot= 0


% PD Controller
% Ideal values given by the pid tuner:
% Kp =27.35 Kd =6.251
% Rise time=0.017s
% Settling time= 1.35s
% Overshoot= 24.7%


% To make overshoot 0% we are increasing the speed.
% The new values are given below:


% Kp =26.97 Kd =6.34
% Rise time=0.0179s
% Settling time= 0.13s
% Overshoot= 0%


% PID Controller
% Ideal values given by the pid tuner:


% This is the best possible reponse given by the system i.e. we cannot
% decrease the overshoot further more.


% Kp =26.97 Kd =6.34 Ki =0.68
% Rise time=0.495s
% Settling time= 9.3s
% Overshoot= 12.4%
%% First Order System PID Code


B2= 0.5;
M2= 5;
P2 = 2;


sys2 = tf([P2],[M2,B2+1])
pidTuner(sys2)


%% Analysis of First Order system with PID controllers
% PI Controller
% Ideal values given by the pid tuner:
% Kp =0.781 Ki =0.70
% Rise time=2.7s
% Settling time= 9.87s
% Overshoot= 13.8%


% Changing the values of Kp and ki to get the best possible stability of
% the system i.e decreasing the overshoot.


% The new values are given below:
% Kp =1.25 Ki =0.46
% Rise time=3.59s
% Settling time= 5.39s
% Overshoot= 1.33%


% PD Controller
% Ideal values given by the pid tuner:
% Kp =53.18 Kd =0
% Rise time=0.102s
% Settling time= 0.181s
% Overshoot= 0%


% As we are getting the overshoot 0% so we don't need to change any
% parameters.


% PID Controller
% Ideal values given by the pid tuner:


% Kp =1.07 Kd =0 Ki =0.53
% Rise time=3.04s
% Settling time= 10.6s
% Overshoot= 6.08%


% The above parameters gives the best response for the system so we don't
% need to change any parameters.
