% Assignment 3
% Snehal Gupta
% 2016201
%% Question 6 a)
T=input('');
A=input('');
d=T/4;
s1=zeros(1,2*T+4);
s2=zeros(1,2*T+4);
s3=zeros(1,2*T+1);
s4=zeros(1,2*T+1);
sum=0;
flag=0;
for k=1:2:2*T+4
    s1(k)=sum;
    s1(k+1)=sum;
    if flag == 0
        sum=sum+d;
        flag=1;
    elseif (flag == 1)
        sum=sum+T-d;
        flag=0;
    end
end
for q=1:4:2*T+4
    s2(q)=0;
    s2(q+1)=A;
    s2(q+2)=A;
    s2(q+3)=0;
end
subplot(3,1,1);
plot(s1,s2);
title('Plot Signal')
xlim([0 2*T]);
ylim([0 4]);
grid;
j=1;
for i=-T:T
    syms t
    cv=(1/T).*(int(A*exp(-1j.*(i).*2.*pi.*t./T),t,0,d));
    s3(j)=abs(cv);
    s4(j)=angle(cv);
    j=j+1;
end
subplot(3,1,2);
stem(-T:T,s3,'filled');
title('Magnitude Spectrum')
xlabel('k')
ylabel('|Xk|')
grid;
subplot(3,1,3);
stem(-T:T,s4,'filled');
title('Phase Spectrum')
ylabel('Angle(Xk)')
xlabel('k')
grid;
% Observations :
% Plot signal is periodic with T
% Magnitude spectrum is even function
% Phase Spectrum is odd function

%% Question 6 b)
T=input('');
A=input('');
d=T/8;
s1=zeros(1,4*T+4);
s2=zeros(1,4*T+4);
s3=zeros(1,4*T+1);
s4=zeros(1,4*T+1);
sum=0;
flag=0;
for k=1:2:4*T+4
    s1(k)=sum;
    s1(k+1)=sum;
    if flag == 0
        sum=sum+d;
        flag=1;
    elseif (flag == 1)
        sum=sum+T-d;
        flag=0;
    end
end
for q=1:4:4*T+4
    s2(q)=0;
    s2(q+1)=A;
    s2(q+2)=A;
    s2(q+3)=0;
end
subplot(3,1,1);
plot(s1,s2);
title('Plot Signal')
xlim([0 2*T]);
ylim([0 4]);
grid;
j=1;
for i=-2*T:2*T
    syms t
    cv=(1/T).*(int(A*exp(-1j.*(i).*2.*pi.*t./T),t,0,d));
    s3(j)=abs(cv);
    s4(j)=angle(cv);
    j=j+1;
end
subplot(3,1,2);
stem(-2*T:2*T,s3,'filled');
title('Magnitude Spectrum')
xlabel('k')
ylabel('|Xk|')
grid;
subplot(3,1,3);
stem(-2*T:2*T,s4,'filled');
title('Phase Spectrum')
ylabel('Angle(Xk)')
xlabel('k')
grid;
% Observations :
% Plot signal is periodic with T
% Magnitude spectrum is even funtion
% Phase Spectrum is odd function


%% Question 7
x=[1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 0 0 0 0 0];
N=length(x);
X=zeros(1,N);
Y=zeros(1,N);
for k=1:N
    X(k)=0;
    for n=1:10
        X(k)=X(k)+x(n).*exp(-1j.*2.*pi.*(n-1).*(k-1)./10);
    end
        X(k)=X(k)./10;
end
f=-10:9;
subplot(3,1,1)
stem(f,x,'filled')
title('Plot Signal')
xlabel('n')
ylabel('x[n]')
grid;

subplot(3,1,2)
stem(f,abs(X),'filled')
title('Magnitude spectrum')
xlabel('k')
ylabel('|Xk|')
grid;

subplot(3,1,3)
stem(f,angle(X),'filled')
title('Phase spectrum')
xlabel('k')
ylabel('angle(Xk)')
grid;
% Observations :
% Plot signal is periodic with T=10
% Magnitude spectrum is even periodic function with T=10
% Phase Spectrum is periodic function with T=10