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
