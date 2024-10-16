function plot_lag(n, m)
    x = generar_punts(n);
    z = generar_punts(m);
    M = mat_lag(n, m);
    hold on;
    for j = 1:n+1
        plot(z, M(:, j));
    end
    hold off;
end