function M = mat_lag(n, m)
    x = generar_punts(n);
    z = generar_punts(m);
    M = zeros(m+1, n+1);
    for j = 1:m+1
        for k = 1:n+1
            M(j, k) = lag_card(x, z(j), k, n);
        end
    end
end