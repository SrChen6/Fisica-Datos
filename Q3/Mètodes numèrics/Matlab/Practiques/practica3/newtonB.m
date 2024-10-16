function [xk, fk, it] = newtonB(x1, tol, itmax, fun, param)
    %x1: punt inicial       tol: interval tolerancia
    it = 0;
    xk = [x1];
    fk = [fun(x1, param)];
    while (abs(fun(x1, param)) > tol) && (it < itmax)
        new_x = x1 - (fun(x1, param) / deriv_param(fun, x1, param));
        x1 = new_x;
        xk = [xk, x1];
        fk = [fk, fun(x1, param)];
        it = it + 1;
    end
end