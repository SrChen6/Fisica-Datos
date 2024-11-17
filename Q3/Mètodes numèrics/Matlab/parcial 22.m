
clear all;
close all;

%% Problema 1

%% Apartat a
n = 1001; %Numero de nodes
R = 1;
w = 1;
t = linspace(0, 25, n);

u1 = @(t, param) u(R, w, t, param);
hold on;
plot(t, u1(t, 0));
plot(t, 1.1*ones(n));
ylim([0, 2])
%%

[x1, f1, it1] = newtonParam(2.9, 10^-10, 100, u1, 1.1);
[x2, f2, it2] = newtonParam(6.5, 10^-10, 100, u1, 1.1);
[x3, f3, it3] = newtonParam(8.6, 10^-10, 100, u1, 1.1);

x1(end)
x2(end)
x3(end)

%% Apartat c

der_u = @(t, param) deriv_param(u1, t, param);
hold on;
plot(t, der_u(t, 0));
plot(t, zeros(n));
aoiehngan = der_u(t, 0);
ylim([-1 1]);
hold off;
[xc, fc, itc] = newtonParam(4.3209, 10^-8, 100, der_u, 0);
xc(end)
%% Funcions

function u = u(R, w, t, param)
    u = sqrt(R.^2*((1+cos(w*t)).^2+(t+sin(w*t)).^2))./t-param;
end

% Donada una funció, un punt i un paràmetre del qual depèn la funció,
% aproxima la derivada de la funció en el punt x0
function deriv = deriv_param(f, x0, param)
    Ax = 10 ^ -6; % arbitrary small number, to represent infinitessimal increase
    deriv = (f(x0 + Ax, param) - f(x0, param)) / Ax;
end

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
        deriv_val = deriv_param(fun, xk(end), param);
        new_x = xk(end) - (fun(xk(end), param) / deriv_val);
        xk = [xk, new_x];
        fk = [fk, fun(xk(end), param)];
        it = it + 1;
    end
end


