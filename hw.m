%% Question 1
a=[2.3 5.8 9];
disp(a);
b=sin(a);
disp(b);
a1=a+3;
disp(a1);
b=[5.2 3.14 2];
disp(b);
c=a+b;
disp(c);
a2=a.^2;
disp(a2);
c1=0:10;
disp(c1);
c2=0:2:10;
disp(c2);
ans1=linspace(10,20,6);
disp(ans1);
ans2=logspace(10,100,5);
disp(ans2);
clearvars a b a1 c a2 c1 c2 ans1 ans2;

%% Question 2
z1=15*((sqrt(10)+(3.7)^2)/log10(1365)+1.9);
disp(z1);
z2=(((2.5)^3*(16+(216/22)))/(1.7)^4+14)+nthroot(2050,4);
disp(z2);
clearvars z1 z2;
%% Question 3
fun = @(x) 2.*x.^4-6.*x.^3+14.8.*x.^2+9.1;
fun1 = @(x) exp(2.*x)/sqrt(14+x.^2+x);
disp(fun(2.34));
disp(fun1(2.34));
%% Question 4
fun2 = @(a,x) x/2-sin(2*a*x)./4*a;
disp(fun2(0.5,pi*3/5)-fun2(0.5,pi/9));
%% Question 5
A=2;
B=23;
C=13;
D=-24;
X0=8;
Y0=3;
Z0=-10;
dis=abs(A*X0+B*Y0+C*Z0+D)/sqrt(A.^2+B.^2+C.^2);
disp(dis);
clearvars A B C D X0 Y0 Z0;
%% Question 6
clearvars a;
a(9)=7.5;
disp(a);
%% Question 7
B=[18 17 16 15 14 13 ; 12 11 10 9 8 7 ; 6 5 4 3 2 1];
va=[B(:,2),B(:,5)];
disp(va);
vb=[B(3,3:6),B(:,2)'];
disp(vb);
vc=[B(:,2),B(:,4),B(:,6)];
disp(vc);
%% Question 8
A=[3 2 5;4.5 2 3;5 1 2.5];
C=[7.5;5.5;4.5];
AN1=inv(A);
AN2=AN1*C;
disp(AN2);
%% Question 9
fun3 = @(x)1.5.*sin(5.*x);
fun4 = @(x)1.5.*cos(3.*x);
fplot(fun3,[0 1 2]*pi);
hold on;
fplot(fun4,[0 1 2]*pi);
xlim([-2,2]);
%% Question 11
A=[2 6 5 2;8 3 1 5;3 5 3 6;5 9 7 1;8 7 2 4];
i=find(A<7);
disp(i);
[i,j]=find(A<7);
disp(i);
disp(j);
[j,k]=find(A>2 & A<5);
disp(j);
disp(k);
q=A(j);
q1=A(k);
disp(q);
disp(q1);
disp(length(find(A>2 & A<5)'));












