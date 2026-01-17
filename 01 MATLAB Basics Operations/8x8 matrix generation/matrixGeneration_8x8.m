% 8x8 matrix using [0,255] random values
% Written by Shiv Kumar Gurjar (BT23ECE084)
clc;
clear all;
close all;
A=zeros(8,8);
for i=1:8
        for j=1:8
           A(i,j)=randi([0 255]);
        end
end
disp('8x8 matrix using [0,255] random values: ');
disp(A);
