function deriv = deriv_param(f, x0, param)
    Ax = 10 ^ -10; % arbitrary small number, to represent infinitessimal increase
    deriv = (f(x0 + Ax, param) - f(x0, param)) / Ax;
end