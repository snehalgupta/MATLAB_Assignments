%Snehal Gupta
%2016201
%Assignment 1

%% Question 5(a)
a=-5:5;
b= 2.*(a ==-2)-(a == 4);
stem(a,b,'filled');
xlabel('n');
ylabel('x[n]');
title('Question 5(a)');

%% Question 5(b)
a=0:20;
b=a.*( (a>=0 )- (a>=10));
c=10.*exp(-0.3*(a-10)).*((a>=10)-(a>=20));
b=b+c;
stem(a,b,'filled');
xlabel('n');
ylabel('x[n]');
title('Question 5(b)');

%% Question 5(c)
a=randn(1,51);
b=0:50;
c=cos(0.04*pi*b)+0.02.*a;
stem(b,c,'filled');
xlabel('n');
ylabel('x[n]');
title('Question 5(c)');

%% Question 6(a)
a=-15:15;
b=((a>=0)-(a>=10));
c=((a>=-10)-(a>=0));
b=(b+c)./2;
stem(a,b,'filled');
xlabel('n');
ylabel('x[n]');
title('Even component of x[n]');

%% Question 6(b)
a=-15:15;
b=((a>=0)-(a>=10));
c=((a>=-10)-(a>=0));
b=(b-c)./2;
stem(a,b,'filled');
xlabel('n');
ylabel('x[n]');
title('Odd component of x[n]');