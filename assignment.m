% Load and display the original image
originalImage = imread('p.jpg');
figure;
subplot(1, 3, 1);
imshow(originalImage);
title('Original Image');

% Add noise to the image at varying levels
noisyImage_low = imnoise(originalImage, 'gaussian', 0, 0.01);
noisyImage_medium = imnoise(originalImage, 'gaussian', 0, 0.05);
noisyImage_high = imnoise(originalImage, 'gaussian', 0, 0.1);

% Display noisy images
subplot(1, 3, 2);
imshow(noisyImage_low);
title('Noisy Image (Low SNR)');
subplot(1, 3, 3);
imshow(noisyImage_high);
title('Noisy Image (High SNR)');

% Wiener filtering for image restoration
restoredImage_low = deconvwnr(noisyImage_low, fspecial('gaussian', [5 5], 1), 0.01);
restoredImage_medium = deconvwnr(noisyImage_medium, fspecial('gaussian', [5 5], 1), 0.05);
restoredImage_high = deconvwnr(noisyImage_high, fspecial('gaussian', [5 5], 1), 0.1);

% Display restored images
figure;
subplot(1, 3, 1);
imshow(restoredImage_low);
title('Restored Image (Low SNR)');
subplot(1, 3, 2);
imshow(restoredImage_medium);
title('Restored Image (Medium SNR)');
subplot(1, 3, 3);
imshow(restoredImage_high);
title('Restored Image (High SNR)');
