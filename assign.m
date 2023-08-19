% Read the input image
originalImage = imread('p.jpg');
% Apply Gaussian smoothing filter
sigma = 2; % Standard deviation of the Gaussian distribution
kernelSize = 5; % Size of the kernel (odd number)
gaussianFilter = fspecial('gaussian', kernelSize, sigma);
smoothedImage = imfilter(originalImage, gaussianFilter, 'conv', 'replicate');
% Display the original and smoothed images
figure;
subplot(1,2,1);
imshow(originalImage);
title('Original Image');
subplot(1,2,2);
imshow(smoothedImage);
title('Smoothed Image (Gaussian Filter)');