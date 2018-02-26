%% question 1
a=[2 6 5 2;8 3 1 5;3 5 3 6;5 9 7 1; 8 7 2 4];
B=reshape(a,[4,5]);
disp(B);
C=a';
disp(C);
B=[a(:,1),zeros(5,1),a(:,2),zeros(5,1),a(:,3),zeros(5,1),a(:,4)];
disp(B);
%% QUESTION 2
A=[1 2 3;4 5 6;7 8 9];
E=padarray(A,[1,2],0,'pre');
disp(E);
%% QUESTION3 
fun = @(x) x.*exp(-x.^0.8)+0.2;
AW=integral(fun,0,8);
disp(AW);
%% Question 4

triangle(3,8,10);
triangle(7,7,5);
%% Question 5
img=imread('lena.jpg');
arr=size(img);
r=arr(1);
g=arr(2);
b=arr(3);
fprintf('%d %d %d \n',r,g,b);
%%section

rgb=rgb2gray(img);
mask=ones(size(img));
for i=10:10:r
    for j=1:g
        mask(i,j)=0;
    end
end
ans2=mask.*mask;
disp(ans2);

        


