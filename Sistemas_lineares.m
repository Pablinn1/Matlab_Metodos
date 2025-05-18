% Sistemas de Equações Lineares Metodos Diretos
% Exercício feito nas notas de aula
% J. Almeida, UFC-DEE-Metodos Numericos, 2024
clc, clear,close, format short
%
disp('Sistemas de Equações Lineares')
A = [2 -1 -7;1 3 1;5 1 -11];
%A=[ 10 7 0;-3 2 6;5 -1 5]
b = [1;4;5];
%
disp('Eliminação de Gauss')
tic     % Aciona o cronometro para medir o tempo de simulação
x_Gauss = Gauss2024(A,b);
toc     % Para o cronometro e informa o tempo de simulação
disp(x_Gauss')
%
disp('Decomposição LU')
tic
xx_LU = LU2024(A,b);
toc
disp(xx_LU')
%
% data e hora da execução do programa
disp(datetime)