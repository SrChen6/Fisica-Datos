function c = cheby(n)
    c = [];
    for j = 0:n
        c = [c, cos((j*pi)/n)];
    end