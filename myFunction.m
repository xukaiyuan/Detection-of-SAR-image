function y = myFunction(x)
%方程21

%x=0:0.1:4;

load('coefficient1.mat');
A = co(2);
B = co(4);
%disp(A);

z = A * x + 1;%z=alpha,x=beta，方程20

%syms l;
%y = int( l^z*exp(-x*l), l, 0, A )/int( l^(z-1)*exp(-x*l), l, 0, A )-B;

y = (igamma(z+1,A*x) - igamma(z+1,0))/x/(igamma(z,A*x) - igamma(z,0))-B;
 %y =double(y);
%plot(x,y);

end

