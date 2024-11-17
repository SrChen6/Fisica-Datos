clear all
close all;

%% Problema 1

%% Apartat a
n = 1001;
e = linspace(0, 1, n);
val = P(e, 0.2);

hold on;
plot(e, val);
plot(e, 0.2*ones(n));
hold off;

[x1, f1, it1] = newtonParam(0.8, 10^-10, 100, @P, 0.2);
[x2, f2, it2] = newtonParam(0.999, 10^-10, 100, @P, 0.2);

disp(x1(end));
disp(x2(end));

%% Apartat b

der_val = deriv_param(@P, e, 0);
figure(2)
hold on;
plot(e(100:990), der_val(100:990))
plot(e, zeros(n))
hold off;
%%
derP = @(x_o, param) deriv_param(@P, x_o, param);
[xc, fc, itc] = newtonParam(0.93, 10^-10, 100, derP, 0);
figure(99)
hold on;
derivada_test = derP(e, 0);
plot(e, derivada_test)
plot(e, zeros(n));
hold off;

disp(xc(end-1));
disp(fc(end-1))


%% Funcions

% Donat un punt inicial, una tolerància objectiu, un nombre d'iteracions
% màxim, una funció i un paràmetre del qual depèn la funció, retorna els
% vectors amb els punts estudiats, el valor de la funció en el punt estudiat
% i el nombre d'iteracions.
function [xk, fk, it] = newtonParam(x1, tol, itmax, fun, param)
    %x1: punt inicial       tol: interval tolerancia
    it = 0;
    xk = x1;
    fk = [fun(x1, param)];
    while (abs(fun(xk(end), param)) > tol) && (it < itmax)
        new_x = xk(end) - (fun(xk(end), param) / deriv_param(fun, xk(end), param));
        xk = [xk, new_x];
        fk = [fk, fun(xk(end), param)];
        it = it + 1;
    end
end

% Donada una funció, un punt i un paràmetre del qual depèn la funció,
% aproxima la derivada de la funció en el punt x0
function deriv = deriv_param(f, x0, param)
    Ax = 10 ^ -10; % arbitrary small number, to represent infinitessimal increase
    deriv = (f(x0 + Ax, param) - f(x0, param)) / Ax;
end

function val = P(ex, p)
    val = (2*sqrt(1-ex.^2))./ex.^3.*(3-2*ex.^2).*asin(ex)-(6./ex.^2).*(1-ex.^2)-p;
end


%% Problema 2

%% Apartat b
x0 = 0;
x1 = pi;
V = [1, x0, x0^2, x0^3;
     0, 1 , 2*x0, 3*x0^2;
     1, x1, x1^2, x1^3;
     0, 1 , 2*x1, 3*x1^2];
B = [f(x0); der_f(x0); f(x1); der_f(x1)];

coef = V\B;

n = linspace(0, pi, 1001);
hold on;
plot(n, H(coef', n));
plot(n, cos(n));

function H = H(coef, x)
    H = coef(1) + coef(2)*x + coef(3)*x.^2 + coef(4)*x.^3;
end

function f = f(x)
    f = cos(x);
end

function f = der_f(x)
    f = -sin(x);
end
