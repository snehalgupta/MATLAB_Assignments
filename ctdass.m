% Snehal Gupta
% 2016201
%% Question1 b) 1
C=1*10^-9;
R1=2*10^3;
R2=100*10^3;
%w=-20:20;
%h=@(w)-R2./R1*(1+R2*1i*w*C);
%plot(abs(h(w)));
h= tf([- R2],[R1 * R2 * C R1]);
bode(h);
%% Question1 b) 2
C=1*10^-9;
R1=2*10^3;
R2=300*10^3;
%w=-20:20;
%h=@(w)-R2./R1*(1+R2*1i*w*C);
%plot(abs(h(w)));
h= tf([- R2],[R1 * R2 * C R1]);
bode(h);
%% Question 1 b) 3
C=1*10^-9;
R1=2*10^3;
R2=500*10^3;
%w=-20:20;
%h=@(w)-R2./R1*(1+R2*1i*w*C);
%plot(abs(h(w)));
h= tf([- R2],[R1 * R2 * C R1]);
bode(h);
%% Question 2 b)
C1 = 0.1 * 10^-6;
C2 = 1000 * 10^-6;
R1 = 10*10^3;
R2 = 10;
[ z,p,k] = tf2zp([ R2*C2 1],[R1*C1 1]);
display(z);
display(p);
h=tf([ R2*C2 1],[R1*C1 1]);
bode(h); 
