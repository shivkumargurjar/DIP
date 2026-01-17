% Written by Shiv Kumar Gurjar (BT23ECE084)
% This program performs histogram equalization on a grayscale image.
% First, histogram equalization is implemented manually without using
% the histeq() function. Then, the result is compared with MATLAB's
% built-in histeq() function by displaying both images and their histograms.

clc;
clear;
close all;

% Read image
I = imread('krishna.JPEG');

% Convert to grayscale if image is RGB
if size(I,3) == 3
    I = rgb2gray(I);
end

I = uint8(I);

% Manual Histogram Equalization
[M, N] = size(I);
L = 256;
total_pixels = M * N;

hist_manual = zeros(1, L);
for i = 1:M
    for j = 1:N
        hist_manual(I(i,j) + 1) = hist_manual(I(i,j) + 1) + 1;
    end
end

pdf = hist_manual / total_pixels;
cdf = cumsum(pdf);
T = round((L - 1) * cdf);

I_manual = zeros(M, N, 'uint8');
for i = 1:M
    for j = 1:N
        I_manual(i,j) = T(I(i,j) + 1);
    end
end

% Histogram Equalization using histeq()
I_histeq = histeq(I);

% Display Results
figure;

subplot(2,3,1);
imshow(I);
title('Original Grayscale Image');

subplot(2,3,2);
imshow(I_manual);
title('Manual Histogram Equalization');

subplot(2,3,3);
imshow(I_histeq);
title('histeq() Result');

subplot(2,3,4);
imhist(I);
title('Original Histogram');

subplot(2,3,5);
imhist(I_manual);
title('Manual Equalized Histogram  .');

subplot(2,3,6);
imhist(I_histeq);
title('histeq Equalized Histogram');
