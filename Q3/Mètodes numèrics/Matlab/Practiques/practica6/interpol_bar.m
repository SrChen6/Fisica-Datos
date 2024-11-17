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



%{
    a = (f(node(1))*(malla-0)^-1)/2;
    b = ((malla-0)^-1)/2;

    for j = 1:n
        a = a +((-1)^j)*f(node(j))*(malla-node(j))^-1;
        b = b + ((-1)^j)*(malla-node(j))^-1;
    end

    a = a + ((-1)^n*f(node(n))*(malla-node(n))^-1)/2;
    b = b + ((-1)^n*(malla-node(n))^-1)/2;
    g = a/b;

%}