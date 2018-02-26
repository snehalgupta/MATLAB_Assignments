%Snehal Gupta
%2016201
%% Question 1
syms t
f(t)=5+((5/1*pi).*(sin(3*1*pi/2)-sin(1*pi/2)).*cos(1*pi*t/2))+((5/1*pi).*(cos(1*pi)-1)*sin(1*pi*t/2))+((5/2*pi).*(sin(3*2*pi/2)-sin(2*pi/2)).*cos(2*pi*t/2))+((5/2*pi).*(cos(2*pi)-1)*sin(2*pi*t/2))+((5/3*pi).*(sin(3*3*pi/2)-sin(3*pi/2)).*cos(3*pi*t/2))+((5/3*pi).*(cos(3*pi)-1)*sin(3*pi*t/2));
ezplot(f)
%% Question 3
syms t
f(t)=(100000/2*(pi)*(pi))*((1/(2*1-1)^2)*cos((2*1-1)*pi*t)+(1/(2*2-1)^2)*cos((2*2-1)*pi*t)+(1/(2*3-1)^2)*cos((2*3-1)*pi*t));
ezplot(f)
%% Question 2
syms t
f(t)=(1/20)+(200/pi)*((1/(1*sqrt((804*1*pi)^2+(2*1*1*pi*pi)-1200))*sin(1*pi*t-(pi/2)-atan(((2*1*1*pi*pi)-1200)/(802*1*pi)))+(1/(2*sqrt((804*2*pi)^2+(2*2*2*pi*pi)-1200))*sin(2*pi*t-(pi/2)-atan(((2*2*2*pi*pi)-1200)/(802*2*pi)))+(1/(3*sqrt((804*3*pi)^2+(2*3*3*pi*pi)-1200))*sin(3*pi*t-(pi/2)-atan(((2*3*3*pi*pi)-1200)/(802*3*pi)))))));
ezplot(f)

