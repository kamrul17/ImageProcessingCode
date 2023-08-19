% Read the original image
original_image = imread('shin.jpg'); % Replace with the actual path to your image
% Convert the image to grayscale (if it's not already)
if size(original_image, 3) > 1
 gray_image = rgb2gray(original_image);
else
 gray_image = original_image;
end
% Display the original image
figure;
subplot(1, 2, 1);
imshow(gray_image);
title('Original Grayscale Image');
% Parameters for salt-and-pepper noise
noise_density = 0.05; % Adjust this value to control the amount of noise (0 to 1)
% Add salt-and-pepper noise
noisy_image = gray_image;
[m, n] = size(noisy_image);
num_noise_pixels = round(noise_density * m * n);
% Randomly select positions for salt and pepper noise
salt_positions = randi([1, m * n], 1, num_noise_pixels);
pepper_positions = randi([1, m * n], 1, num_noise_pixels);
% Set the salt noise pixels to the maximum intensity (white)
noisy_image(salt_positions) = 255;
% Set the pepper noise pixels to the minimum intensity (black)
noisy_image(pepper_positions) = 0;
% Display the image with salt-and-pepper noise
subplot(1, 2, 2);
imshow(noisy_image);
title('Image with Salt-and-Pepper Noise');

 kernel = fspecial('laplacian');
 image_hp = imfilter(original_image, kernel);
 figure;
 subplot(1, 2, 1);
 imshow(original_image);
 title('Original Grayscale Image');
 subplot(1, 2, 2);
 imshow(image_hp);
 title('High-Pass Filtered Image');
 
 sobel_filter_v = fspecial('sobel');
 image_sobel_v = imfilter(original_image, sobel_filter_v);
 figure;
 subplot(1, 2, 1);
 imshow(original_image);
 title('Original Grayscale Image');
 subplot(1, 2, 2);
 imshow(image_sobel_v);
 title('Sobel Filter (Vertical Edges)');

window_size = [5, 5]; % Adjust the window size to control noise removal.
 image_median = medfilt2(noisy_image, window_size);
 figure;
 subplot(1, 2, 1);
 imshow(noisy_image);
 title('Image with Salt-and-Pepper Noise');
 subplot(1, 2, 2);
 imshow(image_median);
 title('Median Filtered Image');