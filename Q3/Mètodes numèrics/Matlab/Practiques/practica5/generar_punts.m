function pts = generar_punts(n)
    pts = -1;
    for i = 1:n
        x_i= -1 + (2*i/n);
        pts = [pts, x_i];
    end
end