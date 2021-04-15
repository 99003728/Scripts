%% Movement of Poles.
% Author: Mohammed Ijaz
% PS Number: 99003728
% Date: 7th April 2021.
% Version: Matlab 2020


%% Description: Here the movement of poles is shown along the real and imaginary axis .
poles = [-10+20i -10-20i -5+10i -5-10i -10+10i -10-10i  3+10i 3-10i -5+0i +5+0i -10+0i +10-0i ];

zeros = [0 0];

gain = 0.9;

s=zpk(zeros,poles,gain);

pzplot(s)

[wn,zeta] = damp(s)
%% Analysis :
% 1. If we move the roots along Wn, then frequency will increase and
% overshoot remains same.
% 2. If we move the poles along jw axis, then overshoot increases and
% frequency also increases.
% 3. If we move along zetaWn axis or x-axis.
% 3a. If we move to right hand side then overshoot increases and frequency
% decreases.
% 3b. If we move to left hand side of s-plane overshoot decreases and
% frequency increases.