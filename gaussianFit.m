function gaussianFit(in)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
%图像直方图建模函数

[x,y,m,s,l,w,test]=imageSmoothing(in);
y = y/(l*w);

%plot(fit(x,y,'poly2'));
plot(x,y);
xlim([0,0.1]);
fun=fittype('A*exp(-((x-u)/sigma)^2/2)');
options=fitoptions(fun);
options.StartPoint=[max(y) s m];
q=fit(x,y,fun,options);
disp(q);


%计算高斯分布左侧的标准差
i = 1;
county = 0;
countx = 0;
while(i < 256)
    if(y(i) < q.A)
        county = county + y(i);
        countx = countx + (m - x(i))^2*y(i);
        i = i + 1;
        
    else 
        county = county;
        countx = countx;
        break;
    end;
    
end;



B = sqrt(countx/county);%左侧标准差


%disp(B);


%save coefficient q.A;

co=[q.A,q.u,q.sigma,B];

save('coefficient.mat','co');
end

