clc;
clear all;
close all;
%%
% Signals and Systems
% Lung Cancer Detection using Image Processing
A=dicominfo('000032.dcm');
B=dicomread(A);
imshow(B);
C=medfilt2(B);
%image_gray=rgb2gray(C);
image_resize=imresize(C,[512 512]);
image_resize=im2double(image_resize);
%figure(1);
%imshow(image_resize);
%title('Input Image');
gamma=0.3; %aspect ratio
psi=0; %phase
theta=90; %orientation
bw=2.8; %bandwidth or effective width
lambda=3.5; % wavelength
pi=180;
for x=1:512
    for y=1:512
          x_theta=image_resize(x,y)*cos(theta)+image_resize(x,y)*sin(theta);
          y_theta=-image_resize(x,y)*sin(theta)+image_resize(x,y)*cos(theta);
          gb(x,y)= exp(-(x_theta.^2/2*bw^2+ gamma^2*y_theta.^2/2*bw^2))*cos(2*pi/lambda*x_theta+psi);
    end
end
%figure(1)
%imshow(gb);
%title('filtered image');
hy = fspecial('sobel');
hx = hy';
Iy = imfilter(double(gb), hy, 'replicate');
Ix = imfilter(double(gb), hx, 'replicate');
gradmag = sqrt(Ix.^2 + Iy.^2);
%figure
%imshow(gradmag,[]), title('Gradient magnitude (gradmag)')
L = watershed(gradmag);
Lrgb = label2rgb(L);
%figure, imshow(Lrgb), title('Watershed transform of gradient magnitude (Lrgb)')
se = strel('disk', 20);
Io = imopen(gb, se);
%figure
%imshow(Io), title('Opening (Io)')
Ie = imerode(gb, se);
Iobr = imreconstruct(Ie, gb);
%figure
%imshow(Iobr), title('Opening-by-reconstruction (Iobr)')
Ioc = imclose(Io, se);
%figure
%imshow(Ioc), title('Opening-closing (Ioc)')
Iobrd = imdilate(Iobr, se);
Iobrcbr = imreconstruct(imcomplement(Iobrd), imcomplement(Iobr));
Iobrcbr = imcomplement(Iobrcbr);
figure
%imshow(Iobrcbr), title('Opening-closing by reconstruction (Iobrcbr)')
fgm = imregionalmax(Iobrcbr);
%figure
%imshow(fgm), title('Regional maxima of opening-closing by reconstruction (fgm)')
I2 = gb;
I2(fgm) = 255;
%figure
%imshow(I2), title('Regional maxima superimposed on original image (I2)')
se2 = strel(ones(5,5));
fgm2 = imclose(fgm, se2);
fgm3 = imerode(fgm2, se2);
fgm4 = bwareaopen(fgm3, 20);
I3 = gb;
I3(fgm4) = 255;
%figure
%imshow(I3)
%title('Modified regional maxima superimposed on original image (fgm4)')
%bw = imbinarize(Iobrcbr);
%figure
%imshow(bw), title('Thresholded opening-closing by reconstruction (bw)')
