mypic = imread('shin.jpg');
factor =0.75;
add = mypic +factor;
sub = mypic -factor;
mul = mypic *factor;
div = mypic /factor;
subplot(2,2,1),imshow(add),title('add')
subplot(2,2,2),imshow(sub),title('substract')
subplot(2,2,3),imshow(mul),title('multiply')
subplot(2,2,4),imshow(div),title('divide')