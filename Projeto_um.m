function [raiz,inter,roots,inter2] =Projeto_um(func, dfunc, a, b,tol, maxit, x0)

erro = 1;
inter = 0;
raiz = NaN;

% --- Parâmetros do método de Newton ---%
error = 1;
roots = NaN;
inter2 = 0;

%--------- Método da Bisseção-----------%
while (erro > tol && inter < maxit)

    raiz = (a+b)/2;
    if func(a) * func(raiz) > 0
        a = raiz;
    else
        b = raiz;
    end
    inter = inter + 1;
    erro = abs(func(raiz));
end

%--------- Método de Newton -----------%
while (error > tol && inter2 < maxit)
    roots = x0;
    delta = func(roots)/dfunc(roots);
    roots = roots - delta;
    error = abs(delta);        % o erro vai ser dado pelo valor do delta, se ele for 
                               % menor que a tolerância,quer dizer que ta baum
    inter2 = inter2 + 1;
end

% --------- Gráficos ---------%
Limite_superior = 3;
Limite_Inferior = -3;

fplot(func, [Limite_Inferior Limite_superior],'r')
grid on
yline(0, 'k--') % Linha preta tracejada no eixo x (y = 0)

legend('função = sin(10*x) + cos(3*x)')
title('Gráfico da função')
xlabel('x')
ylabel('y')

end
