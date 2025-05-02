% Project_Two

clc, clear, close

func = @(x) sin(10*x) + cos(3*x);
dfunc = @(x)10*cos(10*x) - 3*sin(3*x);

disp(func)
disp(dfunc)

x0 = -0.3;   % Chute inicial do método de Newton

% ----- Método da bisseção----- %

a = -0.3;
b = -0.15;
tol = 0.0001;
maxit = 30;

% --------------------------------%

[raiz, roots] = Projeto_dois(func,x0,a,b);

% Mostra o resultado
fprintf('Resultado Fzero (VALOR INICIAL):\n\n');
fprintf(['Raiz encontrada: ', num2str(raiz), '\n\n\n']); %num2str é para transformar o número em string


fprintf('Resultado Fzero (INTERVALAR):\n\n');
fprintf(['Raiz encontrada: ', num2str(raiz), '\n\n\n']); %num2str é para transformar o número em string