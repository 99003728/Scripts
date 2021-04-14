%% Movement of Poles.
% Author: Sourav Dey
% PS Number: 99003785
% Date: 7th April 2021.
% Version: Matlab 2020b.

%% Description: Here the movement of poles is shown along the real and imaginary axis .
poles = [-10+20i -10-20i -5+10i -5-10i -10+10i -10-10i  3+10i 3-10i -5+0i +5+0i -10+0i +10-0i ];

zeros = [0 0];

gain = 0.9;

s=zpk(zeros,poles,gain);

pzplot(s)

[wn,zeta] = damp(s)