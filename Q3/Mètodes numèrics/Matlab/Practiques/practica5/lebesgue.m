function leb = lebesgue(M)
    [m, n] = size(M);

    mat = ones(n);
    vect = mat(:,n);

    leb = abs(M)*vect;
    leb = leb';
end