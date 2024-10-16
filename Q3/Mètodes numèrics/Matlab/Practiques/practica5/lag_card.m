function lag_card = lag_card(x, z, i, n)
    lag_card = 1;
    for j = 1: n+1
        if j ~= i
            lag_card = lag_card * ((z-x(j))/(x(i)-x(j)));
        end
    end
end