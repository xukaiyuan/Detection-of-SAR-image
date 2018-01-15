function ship_Detect(x, paf, r1, r2, A1, A2 )
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
% x为待检测图像
% paf为恒虚警率
% r1,r2为长宽比上下限
% A1，A2为面积上下限
tic
imageSmoothing(x);
gaussianFit(x);
CFAR(x,paf, r1, r2, A1, A2);
toc
end

