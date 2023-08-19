% Load the image
image = imread('shin.jpg');
% Convert the image to grayscale if it's not already
if size(image, 3) == 3
 image = rgb2gray(image);
end
% Perform the 1D Fourier transform along the rows
fft1D = fft(image, [], 2);
% Perform the 2D Fourier transform
fft2D = fft2(image);
% Perform the inverse 1D Fourier transform along the rows
ifft1D = ifft(fft1D, [], 2);
% Perform the inverse 2D Fourier transform
ifft2D = ifft2(fft2D);
% Display the original image and its 1D Fourier transform along the rows
subplot(2, 2, 1);
imshow(image);
title('Original Image');
subplot(2, 2, 2);
imshow(log(1 + abs(fftshift(fft2D))), []);
title('1D Fourier Transform');
% Display the original image and its 2D Fourier transform
subplot(2, 2, 3);
imshow(image);
title('Original Image');
subplot(2, 2, 4);
imshow(log(1 + abs(fftshift(fft2D))), []);
title('2D Fourier Transform');
% Display the inverse 1D Fourier transform along the rows and the inverse 2D Fourier transform
figure;
subplot(2, 2, 1);
imshow(uint8(abs(ifft1D)));
title('Inverse 1D FT');
subplot(2, 2, 2);
imshow(uint8(abs(ifft2D)));
title('Inverse 2D FT');