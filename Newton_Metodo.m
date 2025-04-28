%Método Newton-Raphson 

% Parâmetros

clc; clear; close 

% Define a função que você quer encontrar a raiz
func = @(x) sin(10*x) + cos(3*x);

dfunc = @(x)10*cos(10*x) - 3*sin(3*x); % Derivada da função (é preciso saber dela para o método em questão)

% Define a tolerância e o número máximo de iterações
tol = 0.0001;      %  Tolerância 
maxit = 50;     % no máximo 50 iterações
x0 = 0.3;   % Chute inicial

% Chama a função do método de newton
[raiz,inter] = newton_roots(func, dfunc,x0, tol,maxit);

% Mostra o resultado
disp(['Raiz encontrada: ', num2str(raiz)]) %num2str é para transformar o número em string
disp(['Número de iterações: ', num2str(inter)])
