image= imread('shin.jpg');
if size(image,3)== 3
image = rgb2gray(image);
end
T1= 100;
T2= 200;
binaryImage =zeros(size(image));
binaryImage(image<=T1)=0;
binaryImage(image>T1 & image <=T2)=127;
binaryImage(image>T2)= 255;
subplot(1,2,1);
imshow(image);
title('original image');
subplot(1,2,2);
imshow(binaryImage);
title('Thresholded Image');
