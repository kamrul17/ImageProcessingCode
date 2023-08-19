image = imread('shin.jpg');
if size(image, 3) == 3
image = rgb2gray(image);
end
histogram = imhist(image);
equalizedImage = histeq(image);
subplot(2,2,1);
imshow(image);
title('Original Image');
subplot(2,2,3);
imshow(equalizedImage);
title('Equalized Image');
subplot(2,2,2);
bar(histogram);
title('histogram');
subplot(2,2,4);
equalizedHistogram = imhist(equalizedImage);
bar(equalizedHistogram);
title('Equalized Histogram');
