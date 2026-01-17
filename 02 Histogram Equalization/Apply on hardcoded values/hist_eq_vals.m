% written by Shiv Kumar Gurjar (BT23ECE084)
% histogram equalization of hardcoded values
% compare manual histogram equalization with histeq() results
clc;
clear;
close all;

% Original 8x8 grayscale matrix (not equalized)
I = [52 55 61 59 79 61 76 61;
     62 59 55 104 94 85 59 71;
     63 65 66 113 144 104 63 72;
     64 70 70 126 154 109 71 69;
     67 73 68 106 122 88 68 68;
     68 79 60 70 77 66 58 75;
     69 85 64 58 55 61 65 83;
     70 87 69 68 65 73 78 90];

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
title('Original Image');

subplot(2,3,2);
imshow(I_manual);
title('Manual Histogram Equalization ');

subplot(2,3,3);
imshow(I_histeq);
title('histeq() Result ');

subplot(2,3,4);
imhist(I);
title('Original Histogram ');

subplot(2,3,5);
imhist(I_manual);
title('Manual Equalized Histogram  ');

subplot(2,3,6);
imhist(I_histeq);
title('histeq Equalized Histogram');
