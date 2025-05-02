function [raiz, roots] = Projeto_dois(func,x0,a,b)


opcoes = optimset('TolX', 0.0001, 'MaxIter',30, 'Display', 'off');

% --- Parâmetros do método de Newton ---%

%--------- Método Fzero (Valor Inicial)----------%

raiz = fzero(func,x0, opcoes);

%--------- Método Fzero (Intervalos) ----------%


roots = fzero(func, [a, b], opcoes);


% --------- Gráficos ---------%

Limite_superior = 3;
Limite_Inferior = -3;

fplot(func, [Limite_Inferior Limite_superior],'r')
grid on
yline(0, 'r--');  % Linha preta tracejada no eixo x (y = 0)

legend('função = sin(10*x) + cos(3*x)')
title('Gráfico da função')
xlabel('x')
ylabel('y')

end
