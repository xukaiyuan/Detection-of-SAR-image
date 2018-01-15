function y = dichotomyRoot(x1, x2, e)
%二分法求公式21根
x = (x1 + x2)/2;
f3 = myFunction(x);
f1 = myFunction(x1);
f3 = double(f3);
f1 = double(f1);

if(f1 * f3 < 0)
    m = x - x1;
    if(m > e)
        x2 = x;
        y = dichotomyRoot(x1, x2, e);
    else 
        y = x;
    end;
else 
    m = x2 - x;
    if(m > e)
        x1 = x;
        y = dichotomyRoot(x1, x2, e);
    else 
        y = x;
    end;
end;

end

