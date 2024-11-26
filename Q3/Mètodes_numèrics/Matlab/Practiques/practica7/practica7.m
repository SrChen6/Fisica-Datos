%% Oleart y Chen

clear all;
close all;

%% Exercici 1

toeplitz([1,3,5,7],[1,2,3,4])

%% Exercici 2

%n=5
FD5 = gen_FD(5);
CD5 = gen_CD(5);

%n=20
FD20 = gen_FD(20);
CD20 = gen_CD(20);

% n=40
FD40 = gen_FD(40);
CD40 = gen_CD(40);

% n=80
FD80 = gen_FD(80);
CD80 = gen_CD(80);

%% Exercici 3

for n = [5, 20, 40, 80]
    % Interval on s'estudia la derivada
    a = 0;
    b = 2;

    % Distància entre nodes
    h = (b-a)/(n);
    
    % Malla densa i funció a estudiar
    x = linspace(a,b,n+1);
    y = sin(pi*x);
    
    % Derivada exacta i aproximacions FD i CD
    der_y = pi*cos(pi*x);
    aprox_fd = h^-1*gen_FD(n)*y';
    aprox_cd = h^-1 *gen_CD(n)*y';
    
    % Plot de la derivada exacta i les aproximacions
    figure(n)
    ax1 = subplot(1, 2, 1);
    plot(x(1:end-1), aprox_fd)
    hold on;
    plot(x, der_y)
    plot(x(2:end-1), aprox_cd)
    title('Aproximació de la derivada amb FD i CD')
    hold off;
    
    % Plot dels errors
    ax2 = subplot(1, 2, 2);
    semilogy(ax2, x(1:end-1), abs(der_y(1:end-1)'-aprox_fd))
    hold on;
    title('Error de la aproximació')
    semilogy(ax2, x(2:end-1), abs(der_y(2:end-1)'-aprox_cd))
    hold off;
end

%% Exercici 4

max_e_fd = [];
max_e_cd = [];
h_n = [];
for n = 100:100:2000
    % Interval on s'estudia la derivada
    a = 0;
    b = 2;

    % Distància entre nodes
    h = (b-a)/(n);
    
    % Malla densa i funció a estudiar
    x = linspace(a,b,n+1);
    h_n = [h_n, x(2)-x(1)];
    y = sin(pi*x);
    
    % Derivada exacta i aproximacions FD i CD
    der_y = pi*cos(pi*x);
    aprox_fd = h^-1*gen_FD(n)*y';
    aprox_cd = h^-1 *gen_CD(n)*y';
    
    % Màxim error de FD
    error_fd = abs(der_y(1:end-1)'-aprox_fd);
    maxim_fd = max(error_fd);

    % Màxim error de CD
    error_cd = abs(der_y(2:end-1)'-aprox_cd);
    maxim_cd = max(error_cd);

    max_e_fd =[max_e_fd, maxim_fd];
    max_e_cd =[max_e_cd, maxim_cd];
end

% Gràciques de l'error màxim en funció de h

figure(1)
loglog(h_n, max_e_fd)
hold on;
loglog(h_n, max_e_cd)
title('errors dels FD i CD en funció de h')
hold off;
snapnow;

% El pendent del mètode FD és de 1, per tant l'error decreix linealment amb
% h, mentre que el pendent de CD és 2, per tant l'error decreix
% quadràticament amb h.


%% Funcions

function FD = gen_FD(n)
    vect1 = zeros(1,n+1);
    vect1(1)=-1;
    
    vect2 = zeros(1,n+1);
    vect2(1)=-1;
    vect2(2)=1;
    
    FD= toeplitz(vect1,vect2);
    FD = FD(1:end-1,:);
end

function CD = gen_CD(n)
    vect1 = zeros(1,n+1);
    vect1(2)=-1/2;
    
    vect2 = zeros(1,n+1);
    vect2(2)=1/2;
    
    CD= toeplitz(vect1,vect2);
    CD = CD(2:end-1,:);
end