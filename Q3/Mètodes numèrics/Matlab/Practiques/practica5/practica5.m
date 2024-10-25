%% Oleart y Chen

%% Apartat a
n=3;
m = 600; %De prova

M = mat_lag(n, m);

%% Apartat b
m = 600;

n=3;
figure(1)
plot_lag(n, m)
hold off;
%%
n = 6;
figure(2)
plot_lag(n,m)
hold off;

%%
n = 9;
figure(3)
plot_lag(n,m)
hold off;

%% Apartat c
n = 8;
M = mat_lag(n, m);
leb = lebesgue(M);
semilogy(z, leb)

%%
n = 16;
M = mat_lag(n, m);
leb = lebesgue(M);
semilogy(z, leb)

%%
n = 24;
M = mat_lag(n, m);
leb = lebesgue(M);
semilogy(z, leb)

%%
n = 32;
M = mat_lag(n, m);
leb = lebesgue(M);
semilogy(z, leb)

%% Apartat d
z = generar_punts(m);
fz_j = f(z);
errors = [];
for n = 4:2:60
    x = generar_punts(n);
    M = mat_lag(n, m);
    fx_j = f(x);
    prod = M*fx_j';
    errors = [errors max(abs(fz_j - prod'))];
end

x = 4:2:60;
semilogy(x, errors);
hold on;
semilogy(x, epsil*eps);

%% Funcions
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


function M = mat_lag(n, m)
    x = generar_punts(n);
    z = generar_punts(m);
    M = zeros(m+1, n+1);
    for j = 1:m+1
        for k = 1:n+1
            M(j, k) = lag_card(x, z(j), k, n);
        end
    end
end

function pts = generar_punts(n)
    pts = -1;
    for i = 1:n
        x_i= -1 + (2*i/n);
        pts = [pts, x_i];
    end
end


function leb = lebesgue(M)
    [m, n] = size(M);

    mat = ones(n);
    vect = mat(:,n);

    leb = abs(M)*vect;
    leb = leb';
end

function lag_card = lag_card(x, z, i, n)
    lag_card = 1;
    for j = 1: n+1
        if j ~= i
            lag_card = lag_card * ((z-x(j))/(x(i)-x(j)));
        end
    end
end