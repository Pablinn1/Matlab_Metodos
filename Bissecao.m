%Método da Bisseção

clc; clear; close 

% Define a função que você quer encontrar a raiz
func = @(x) sin(10*x) + cos(3*x);

% Define os limites do intervalo [a, b]
a = 0.2;
b = 0.4;

% Define a tolerância e o número máximo de iterações
tol = 0.0001;      % tolerância 
maxit = 50;     % no máximo 50 iterações

% Chama a função de bisseção
[raiz, inter] = bissec_teste(func, a, b, tol, maxit);

% Mostra o resultado
disp(['Raiz encontrada: ', num2str(raiz)]) %num2str é para transformar o número em string
disp(['Número de iterações: ', num2str(inter)])
