%Snehal Gupta
%2016201
%Assignment 2
%% Question 5
n=-10:10;
x=exp((-0.1+0.3i).*n);
mag=abs(x);
ang=angle(x);
rea=real(x);
ima=imag(x);

subplot(2,2,1);
stem(n,mag,'filled');
title('magnitude');
grid();
xlabel('n');
ylabel('x[n]');

subplot(2,2,2);
stem(n,ang,'filled');
title('phase');
grid();
xlabel('n');
ylabel('x[n]');

subplot(2,2,3);
stem(n,rea,'filled');
title('The Real Part');
grid();
xlabel('n');
ylabel('x[n]');

subplot(2,2,4);
stem(n,ima,'filled');
title('The Imaginary Part');
grid();
xlabel('n');
ylabel('x[n]');

%% Question 6
avg=ones(3,3)/9;
x=imread('mypic.jpg');
y=imfilter(x,avg);
title('Original image');
subplot(3,1,1);
imshow(x);
title('Filtered image');
subplot(3,1,2);
imshow(y);
sobel=[1 2 1 ; 0 0 0 ; 1 -2 -1];
z=imfilter(y,sobel);
title('Sobel filtered image');
subplot(3,1,3);
imshow(z);

