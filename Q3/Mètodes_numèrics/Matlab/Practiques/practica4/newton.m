function [xk, fk, it] = newton(x1, tol, itmax, fun, param)
    %x1: punt inicial       tol: interval tolerancia
    it = 0;
    xk = x1;
    fk = [fun(x1, param)];
    while (abs(fun(xk(end), param)) > tol) && (it < itmax)
        new_x = xk(end) - (fun(xk(end), param) / deriv_param(fun, xk(end), param));
        if new_x < 0  % En aquest exercici no es volen les arrels negatives
            new_x = x1+10;
        end
        xk = [xk, new_x];
        fk = [fk, fun(xk(end), param)];
        it = it + 1;
    end
end