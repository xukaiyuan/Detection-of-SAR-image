function y = myFunction2(x)
%·½³Ì22
load('coefficient_fa.mat');

a = coefficient(1);
b = coefficient(2);
pfa = 10e-4;%Ðé¾¯ÂÊ
%syms l;
%y = 1 - int( b^a/gamma(a)*l^(a-1)*exp(-b*l), l, 0, x )-pfa;
y = 1 + (igamma(a,b*x) - igamma(a,0))/gamma(a) - pfa;

end

