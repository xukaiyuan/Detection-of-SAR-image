function dichotomy()
%求公式21解和输出
load('coefficient1.mat');
A = co(1);
x1 = input('下限，x1=');
x2 = input('上限，x2=');
e = input('精度,e=');
f1 = myFunction(x1);
f2 = myFunction(x2);
f1 = double(f1);
f2 = double(f2);

if(f1 * f2 > 0)
    disp('根不在该区间');
else
    y=dichotomyRoot(x1, x2, e);
    disp('beta=');disp(y);
    disp('alpha=');disp(A * y + 1);
end;


coefficient=[A * y + 1,y];

save('coefficient_fa.mat','coefficient');
end

