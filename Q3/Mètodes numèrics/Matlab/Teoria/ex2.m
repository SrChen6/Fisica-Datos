x = (1:1/100000:3);
y = f(x);
plot(x,y);
title('Grafico');
axis([1 3 -5 5]);

function f = f(x)
    f = 2.^(-x)+exp(x)+2*cos(x)-6;
end

function [x, i] = bisec()
    a = 1;
    b = 3;

    x = -1;
    i = 0;

    while abs(b-a) > 10^(-10)
        i = i + 1;
        x = (a+b)/2;

        if f(a)*f(x)<0
            b = x;
        else
            a = x;
        end
    end
end

[x, i] = bisec();
disp([x, i])