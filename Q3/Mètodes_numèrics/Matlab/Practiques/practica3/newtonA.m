function [xk, fk, it] = newtonA(x1, tol, itmax, fun)
    %x1: punt inicial       tol: interval tolerancia
    it = 0;
    xk = [x1];
    fk = [fun(x1)];
    while (abs(fun(x1)) > tol) && (it < itmax)
        new_x = x1 - (fun(x1) / deriv(fun, x1));
        x1 = new_x;
        xk = [xk, x1];
        fk = [fk, fun(x1)];
        it = it + 1;
    end
end