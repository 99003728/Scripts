clc

B1= 0.1;
M1=1000;
K1 = 0.9;
s=poly(0,'s');
tf=syslin('c',(K1/M1)/(s^2+(B1/M1)*s+(K1/M1)))


disp(tf)
plzr(tf)
z=1

wn=sqrt(K1/M1)

zeta =  B1/(2*wn*M1)
wd =( wn*sqrt(1-zeta^2) )
mp =((%e^(-%pi*zeta/(sqrt(1 - zeta ^2)))) *100)
theta = atan(sqrt((1 -zeta^2)/zeta)) ;
tr =((%pi-theta)/wd)
tp =(%pi/wd)
ts =(4/(zeta*wn))

disp(tr)
disp(tp)
disp(ts)
disp(mp)



    


SS1 = tf2ss(tf) 
tfx1 = clean(ss2tf(SS1)) 
show_window(2)
t=0:0.01:5;                         // Define a time range for the step test
plot2d(t, csim('step',t,tf));
plot2d(t, csim('impulse',t,tf));       // csim applies the step test and plot2d produces the graphical output
xlabel("Time [s]");                 // Add a title and label axis
ylabel("y1");
title("Step & Impulse Response");
xgrid(1, 1, 10);                    // Define a nice grid for the plot to make it easier to read
show_window(3)
clf();                              // Clears the plotting window
f = 0.1:100;                        // Set-up the frequency range we want
bode(tf, f);                        // Generate the Bode plot
title("Bode Plot Example");         // Add a title





show_window(4)
clf();                              // Clears the plotting window
f = 0.1:100;                        // Set-up the frequency range we want
bode(tf, f);                        // Generate the Bode plot
title("Bode Plot Example");         // Add a title




