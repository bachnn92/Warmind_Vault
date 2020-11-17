syms t
xt = exp(-t/10).*sin(5*t);
yt = exp(-t/10).*cos(5*t);
zt = t;
fplot3(xt,yt,zt,[-10 10])