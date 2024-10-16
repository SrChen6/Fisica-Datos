function plot_f(f, al, a, b) %plots function f in interval [a, b]
x = (a:1/1000:b);
plot(x, f(x, al));
end
