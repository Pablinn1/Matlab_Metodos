%Projeto_01_localização_raízes
%Raízes da equação: sin(10*t) + cos(3*t)

clc, clear, close

func = @(t) sin(t*10) + cos(3*t);
disp (func)

Limite_inferior = -1;
Limite_superior = 1;

fplot(func, [Limite_inferior Limite_superior])
grid on
legend('Função: sin(10*t) + cos(3*t)')