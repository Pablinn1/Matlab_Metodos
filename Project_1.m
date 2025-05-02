% Project_One

clc, clear, close

func = @(x) sin(10*x) + cos(3*x);
dfunc = @(x)10*cos(10*x) - 3*sin(3*x);

disp(func)
disp(dfunc)

x0 = -0.3;   % Chute inicial do método de Newton

% ----- Método da bisseção----- %

a = -0.4;
b = -0.15;
tol = 0.0001;
maxit = 30;

% --------------------------------%

[raiz, inter,roots,inter2] = Projeto_um(func,dfunc, a, b, tol, maxit,x0);

% Mostra o resultado
fprintf('Resultado do Método da Bisseção:\n\n');

disp(['Raiz encontrada: ', num2str(raiz)]) %num2str é para transformar o número em string
fprintf(['Número de iterações: ', num2str(inter), '\n\n\n']);

fprintf('Resultado do Método de Newton:\n\n');

disp(['Raiz encontrada: ', num2str(roots)]) %num2str é para transformar o número em string
disp(['Número de iterações: ', num2str(inter2)])