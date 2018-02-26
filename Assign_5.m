% Snehal Gupta
% 2016201
% Assignment 5
%% Question 8
f = @(x) [(x.*x).*(x>=0 & x<=2)];
x = linspace(0,2);
intvl = [-6 6];
pfx = repmat(f(x),1,diff(intvl)/2);
px = linspace(intvl(1),intvl(2),length(pfx));
figure(1)
plot(px, pfx)
grid
s3=zeros(1,13);
for i=-6:6
    syms t
    cv=(1/T).*(int(A*exp(-1j.*(i).*2.*pi.*t./2),t,0,2));
    s3(j)=abs(cv);
    j=j+1;
end
figure(2)
stem(-6:6,s3,'filled');
title('Magnitude Spectrum')
xlabel('k')
ylabel('|Xk|')
grid;
%% Question 10
T = 0:1/4e3:10;
y = chirp(T,0,10,2000,'Linear');
f = 10000;
c = 400;
du = 1/f;
v = (0:du:0.1);
x = sin(2*pi*c*v);
ss = conv(y,x);
subplot(2,1,1)
plot(v,x);
xlabel('Time(s)');
subplot(2,1,2)
plot(ss);
%% Question 12
clear all;

I=imread('Friends.jpg');

fil=fspecial('motion',10,37);

I2=imfilter(I,fil);

figure
subplot(121)
imshow(I)
title('Original image')
subplot(122)
imshow(I2)
title('Motion blurred image')