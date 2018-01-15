function dichotomy2()
%求公式22解和输出

x1 = input('下限，x1=');
x2 = input('上限，x2=');
e = input('精度,e=');
f1 = myFunction2(x1);
f2 = myFunction2(x2);
f1 = double(f1);
f2 = double(f2);

if(f1 * f2 > 0)
    disp('根不在该区间');
else
    y=dichotomyRoot2(x1, x2, e);
    disp('T=');disp(y);
end;


end

