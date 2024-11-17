function deriv = deriv(f, x0)
Ax = 10^-10;
deriv = (f(x0+Ax) - f(x0)) / Ax;
end