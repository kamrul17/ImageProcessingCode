image1 = imread('image.png'); % Replace with your image's path
image1=imresize(image1,1);
image = double(image1);
% Reshape the image to a 2D matrix where each row represents a pixel
[M, N, channels] = size(image);
reshaped_image = reshape(image, M * N, channels);
% Choose the number of clusters (segments) you want

num_clusters = 3; % You can adjust this value
% Apply k-means clustering
[idx,  centers] = kmeans(reshaped_image, num_clusters);
% Reshape the cluster indices back to the original image size
segmented_image = reshape(idx, M, N);
% Display the original and segmented images
subplot(2, 2, 1);
imshow(uint8(image));
title('Original Image');
subplot(2, 2, 2);
imagesc(segmented_image);
colormap(colorcube); % Use a colormap for better visualization
colorbar;
title('Segmented Image');

num_clusters = 5; % You can adjust this value
% Apply k-means clustering
[idx, centers] = kmeans(reshaped_image, num_clusters);
% Reshape the cluster indices back to the original image size
segmented_image3 = reshape(idx, M, N);
% Display the original and segmented images
 
subplot(2, 2, 3);
imagesc(segmented_image3);
colormap(colorcube); % Use a colormap for better visualization
colorbar;
title('Segmented Image 5');

num_clusters = 7; % You can adjust this value
% Apply k-means clustering
[idx, centers] = kmeans(reshaped_image, num_clusters);
% Reshape the cluster indices back to the original image size
segmented_image3 = reshape(idx, M, N);
% Display the original and segmented images
 
subplot(2, 2, 4);
imagesc(segmented_image3);
colormap(colorcube); % Use a colormap for better visualization
colorbar;
title('Segmented Image 7');