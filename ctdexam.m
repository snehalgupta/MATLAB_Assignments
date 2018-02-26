%% Snehal Gupta
s=tf('s');
H = (s)/(1000+5*s);
bode(H);
%%
s1=tf('s')
H=-1/(s*5*(10^-4))*(1+(s*5*(10^-4)));
bode(H);
