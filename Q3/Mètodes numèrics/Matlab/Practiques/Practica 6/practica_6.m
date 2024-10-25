%% Oleart y Chen

%% Proves inicials

% Nodes de Chebychev
n = 100;
c = cheby(n);
nod_chev = 0.5*(c+1); % a = 0, b = 1
nod_equi = linspace(0, 1, n+1);

%Malla densa
m=2000;
malla = linspace(10^-12, 1-10^-11, m+1);

%% Apartat a
% Plot de la funció sobre la malla
plot(malla, f(malla))
title('Funció f(x) representada en la malla densa')


%% Apartat b

% Test de la interpolació baricèntrica amb nodes de Chebychev
n = 1000;
c = cheby(n);
nod_chev = 0.5*(c+1); % a = 0, b = 1
interpoled = interpol_bar(n, nod_chev, malla);
figure(1)
plot(malla, interpoled)
title('Interpolació amb 1000 nodes')

% Error obtingut
error = abs(interpoled - f(malla));
disp(max(error))
figure(2)
semilogy(malla, error)
title('Error de la interpolació a 1000 nodes')
%%
%Evolució de l'error en funció del nombre de nodes
for n = 100:100:500
    c = cheby(n);
    nod_chev = 0.5*(c+1); % a = 0, b = 1
    interpoled = interpol_bar(n, nod_chev, malla);
    error = abs(interpoled - f(malla));
    figure(n/100)
    semilogy(malla, error);
    title(sprintf('Error amb %d nodes', n));
end

%% Apartat c
error = 100000; %Simulació de l'infinit
n = 0;
while error > 10^-6
    c = cheby(n);
    nod_chev = 0.5*(c+1); % a = 0, b = 1
    interpoled = interpol_bar(n, nod_chev, malla);
    lst_error = abs(interpoled - f(malla));
    if max(lst_error) < error
        error = max(lst_error);
    end
    n = n + 10; % Increments de 10 per fer el codi més hagil
end
disp(['Nombre de iteracions: ', num2str(n)])

% Plot del graf per aquesta n
c = cheby(n);
nod_chev = 0.5*(c+1); % a = 0, b = 1

interpoled = interpol_bar(n, nod_chev, malla);
error = abs(interpoled - f(malla));
disp(['Error màxim: ', num2str(max(error))])
figure(2)
semilogy(malla, error)
title(sprintf('Error amb %d nodes', n));

%% Funcions
%{
% n: numallaero de nodos
% node: conjunto de nodos en una cierta distribución
% malla: 1 punto de la mallaalla densa
function g = interpol_bar(n, node, m)
    len_m = size(m, 2);

    s = (-1).^(0:n);
    s_n = s.*[f(node(1))/2, f(node(2:end-1)), f(node(end))/2];
    s_d = [s(1)/2, s(2:end-1), s(end)/2];
    g = [];
    for k= 1: len_m
        num = s_n*((m(k)-node).^(-1))';
        den = s_d*((m(k)-node).^(-1))';
        g = [g, num/den];
    end
end


function f = f(x)
    f = tanh(20*sin(12*x))+(2/100)*exp(3*x).*sin(300*x);
end


function c = cheby(n)
    c = [];
    for j = 0:n
        c = [c, cos((j*pi)/n)];
    end


%}