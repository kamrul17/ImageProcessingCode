% Read the image
image = imread('shin.jpg');
% Convert the image to grayscale (if it's not already)
if size(image, 3) > 1
 gray_image = rgb2gray(image);
else
 gray_image = image;
end
% Display the original image
figure;
subplot(2, 3, 1);
imshow(gray_image);
title('Original Grayscale Image');
% Perform Dilation
se = strel('square', 3); % Define a structuring element (3x3 square in this case)
dilated_image = imdilate(gray_image, se);
% Display the dilated image
subplot(2, 3, 2);
imshow(dilated_image);
title('Dilated Image');
% Perform Erosion
eroded_image = imerode(gray_image, se);
% Display the eroded image
subplot(2, 3, 3);
imshow(eroded_image);
title('Eroded Image');
% Perform Opening
opened_image = imopen(gray_image, se);
% Display the opened image
subplot(2, 3, 4);
imshow(opened_image);
title('Opened Image');
% Perform Closing
closed_image = imclose(gray_image, se);
% Display the closed image
subplot(2, 3, 5);
imshow(closed_image);
title('Closed Image');
% Perform Boundary Extraction
boundary_image = gray_image - eroded_image;
% Display the boundary image
subplot(2, 3, 6);
imshow(boundary_image);
title('Boundary Extraction');