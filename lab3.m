mypic = imread('shin.jpg');
factor =0.75;
add = mypic +factor;
sub = mypic -factor;
mul = mypic *factor;
div = mypic /factor;
gray =rgb2gray(mypic);
black =im2bw(mypic);
subplot(3,2,1),imshow(add),title('add')
subplot(3,2,2),imshow(sub),title('substract')
subplot(3,2,3),imshow(mul),title('multiply')
subplot(3,2,4),imshow(div),title('divide')
subplot(3,2,5),imshow(gray),title('gray')
subplot(3,2,6),imshow(black),title('black')