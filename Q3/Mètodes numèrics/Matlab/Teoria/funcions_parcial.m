
%% Teoria
%{
Formula de la recta: 
y=a+mn
- a: intersecció amb eix y
- m: pendent

y-y_o = m*(x-x_o)
- y_o, x_o: punt per on passa la recta
- m: pendent
%}

%% Funcions


% Code 1: Bisection method for solving f(x) = 0 in [a,b]
% Input: 1. [a,b]: interval (it assumes that f(a)f(b) < 0)
% 2. tol: tolerance so that abs(x_k+1 - x_k) < tol
% 3. itmax: maximum number of iterations allowed
% 4. fun: function’s name
% Output: 1. xk: resulting sequence
% 2. res: resulting residuals
% 3. it: number of required iterations
function [xk,res,it] = bisection(a,b,tol,itmax,fun)
ak = a; bk = b; xk = []; res = [];
it = 0; tolk = abs(bk-ak)/2 ;
while it < itmax & tolk > tol
ck = (ak + bk)/2; xk = [xk ck];
if it > 0; tolk = abs(xk(end)-xk(end-1)); end
fa = feval(fun,ak); fc = feval(fun,ck); res = [res abs(fc)];
if fc*fa < 0; bk = ck; else ak = ck; end
it = it + 1 ;
end

% Code 2: Newton’s method for solving f(x) = 0
% Input: 1. a: initial guess
% 2. tol: tolerance so that abs(x_k+1 - x_k) < tol
% 3. itmax: maximum number of iterations allowed
% 4. fun: function’s name
% 5. dfun: derivative’s name
% (If dfun = ‘0’, then f’(x) is approximated)
% Output: 1. xk: resulting sequence
% 2. res: resulting residuals
% 3. it: number of required iterations
function [xk,res,it] = newton(a,tol,itmax,fun,dfun)
xk = a; fk = feval(fun,xk); res = abs(fk); it = 0;
tolk = res(1); dx = 1e-8 ;
while it < itmax && tolk > tol
if dfun == '0'
dfk = (feval(fun,xk(end)+dx)-fk)/dx;
else
dfk = feval(dfun,xk(end));
end
xk = [xk, xk(end) - fk/dfk]; fk = feval(fun,xk(end));
res = [res abs(fk)]; tolk = abs(xk(end)-xk(end-1));
it = it + 1;
end

% Code 3: Lagrange cardinal polynomials (equispaced nodes)
function [P,xn,z] = cardpolequi(a,b,n,m)
% Input: 1. a & b: interval [a,b]
% 2. n: with x_0 = a and x_n = b (n+1 interp nodes)
% 3. m: number of points in dense grid
%
% Output: 1. P: matrix of card. polynomials.
% 2. xn: equispaced interpolation nodes
% 3. z: dense grid
xn = a + [0:n]'*(b-a)/n; z = linspace(a,b,m)';
% Matrix containing cardinal polynomials
P = ones(m,n+1) ;
for jj = 0:n
knj = [0:jj-1 jj+1:n];
for kk = knj
P(:,jj+1) = P(:,jj+1).*(z-xn(kk+1))/(xn(jj+1)-xn(kk+1));
end
end
% If fn is a column vector containing f(x) at the nodes xn,
% then P*fn provides the interpolant P_n f(z) on the dense
% grid z (see Practical 3 for details)


% Code 4: Chebyshev Barycentric Interpolation
% Chebyshev nodes of second kind (practical abscissas)
function ff = barifun(xn,fn,z)
% Input: 1. xn = interpolation Chebyshev nodes
% mapped to [a,b] (column vector):
% x_j = a + (b-a)*(1+cos(j*pi/n))/2; j=0,1,. . .,n
% 2. fn = function at nodes xn (column vector)
% 3. z = evaluation grid (z =/= xn; column vector)
% Output: ff interpolated function at z
n = length(xn); ff = 0*z; num = ff ; den = ff ;
s = (-1).^[0:n-1]';
sn = s.*[fn(1)/2; fn(2:end-1); fn(end)/2];
sd = [s(1)/2; s(2:end-1); s(end)/2];
for ii = 1:length(num);
num = ((z(ii) - xn).^(-1))'*sn;
den = ((z(ii) - xn).^(-1))'*sd;
ff(ii) = num/den;
end

function deriv = deriv_param(f, x0, param)
    Ax = 10 ^ -10; % arbitrary small number, to represent infinitessimal increase
    deriv = (f(x0 + Ax, param) - f(x0, param)) / Ax;
end