color_image = imread('shin.jpg');
% Display the color image
figure;
subplot(2, 2, 1);
imshow(color_image);
title('Original Color Image');
red_channel = color_image(:, :, 1);
green_channel = color_image(:, :, 2);
blue_channel = color_image (:, :, 3);
allBlack = zeros(size(color_image, 1), size(color_image, 2), 'uint8');
red = cat(3, red_channel, allBlack, allBlack);
green = cat(3, allBlack, green_channel, allBlack);
blue = cat(3, allBlack, allBlack, blue_channel);
% Display the individual color channels
subplot(2, 2, 2);
imshow(red);
title('Red Channel');
subplot(2, 2, 3);
imshow(green);
title('Green Channel');
subplot(2, 2, 4);
imshow(blue);
title('Blue Channel');
hsv_image = rgb2hsv(color_image);
figure;
subplot(2, 2, 1);
imshow(color_image);
title('Original Image');
subplot(2, 2, 2);
imshow(hsv_image(:, :, 1));
title('Hue Channel');
subplot(2, 2, 3);
imshow(hsv_image(:, :, 2));
title('Saturation Channel');
subplot(2, 2, 4);
imshow(hsv_image(:, :, 3));
title('Value (Brightness) Channel');
% Enchancing Color Models
enhanced_red_channel = imadjust(red_channel);
enhanced_green_channel = imadjust(green_channel);
enhanced_blue_channel = imadjust(blue_channel);
% Merge the enhanced color channels
enhanced_color_image = cat(3, enhanced_red_channel, enhanced_green_channel,enhanced_blue_channel);
% Display the enhanced color image
figure;
subplot(1, 2, 1);
imshow(color_image);
title('Original Color Image');
subplot(1, 2, 2);
imshow(enhanced_color_image);
title('Enhanced Color Image');