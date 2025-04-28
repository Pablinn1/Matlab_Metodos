% Projeto_01_localizacao_raizes
% Raízes da equação: sin(10*t) + cos(3*t)

clc;
clear;
close all;

% Definindo a função
func = @(t) sin(10*t) + cos(3*t);

% Plotando para visualizar
Limite_inferior = -1;
Limite_superior = 1;

fplot(func, [Limite_inferior Limite_superior])
grid on
legend('Função: sin(10*t) + cos(3*t)')
xlabel('t')
ylabel('f(t)')
title('Localização das raízes')

hold on;

% Encontrar raízes usando fzero
% Escolhemos chutes iniciais (estimar olhando o gráfico)

chutes_iniciais = [-0.8, -0.5, -0.2, 0.1, 0.4, 0.7, 0.9]; % estimativas boas

raizes = zeros(size(chutes_iniciais)); % pré-aloca vetor de raízes

for i = 1:length(chutes_iniciais)
    raizes(i) = fzero(func, chutes_iniciais(i));
    plot(raizes(i), 0, 'ro') % marca as raízes no gráfico com bolinhas vermelhas
end

disp('Raízes encontradas:')
disp(raizes')

hold off;
