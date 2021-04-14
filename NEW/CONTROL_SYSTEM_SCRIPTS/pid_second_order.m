%% Second Order System PID Analysis
B1= 0.5
M1= 5;
K1 =1;
P1=5;

sys1 = tf([P1*K1],[M1,B1,2*K1])
pidTuner(sys1)

%% First Order System PID Analysis

B2= 0.5;
M2= 5;
P2 = 2;

sys2 = tf([P2],[M2,B2+1])
pidTuner(sys2)
