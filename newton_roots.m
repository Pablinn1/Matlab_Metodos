function [raiz,inter] = newton_roots(func, dfunc,x0, tol,maxit)

inter = 0;
erro = 1;
raiz = x0;

while (erro > tol && inter < maxit)

    delta = func(raiz)/dfunc(raiz); 
    raiz = raiz - delta;
    erro = abs(delta); % O erro vai ser dado pelo valor do delta, se ele for menor que a tolerância,quer dizer que ta baum
    inter = inter + 1;
end
end

