function [x,y,m,s,l,w,test]=imageSmoothing(x)
%UNTITLED1 此处显示有关此函数的摘要
%   此处显示详细说明
%图像平滑函数
img=imread(x);
h=ones(21,21);%这里是掩模的大小，后期用m，n动态区分
[l,w] = size(imread(x));
test=conv2(img,h/441,'same');
test = test/max(test(:));
imtool(test,[]);
imtool(x);
% figure(1);
% smooth=mat2gray(test);
% imshow(test,[]);
%imwrite(test,'boat3_VV_smoothing.tif');
[y,x]=imhist(test);
%计算概率参数
% gt=imhist(test);  
m=mean2(test);%u
s=std2(test);%sigma
disp('均值为：');disp(m);
disp('左侧标准差为：');disp(s);


%这里设个返回值
end

