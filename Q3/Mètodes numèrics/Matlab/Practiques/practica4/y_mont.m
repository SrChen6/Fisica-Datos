function y = y(x)
    a = .15;
    b = .04;
    y = a*x.^2.*exp(-b*x);
end