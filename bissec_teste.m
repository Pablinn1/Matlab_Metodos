function [raiz, inter] = bissec_teste(func, a, b,tol, maxit) % Propriedades da função a serem recebidas

erro = 1; 
inter = 0;
raiz = NaN; %Inicio a raiz como um vazio 

% Loop ira seguir enquanto meu ERRO for maior que a TOLERÂNCIA
% E se o número de interações for menor que o máximo exigido
while(erro > tol && inter < maxit) 

    raiz = (a + b)/2;              %Divido o intervalo no meio
    if func(a)  * func(raiz) > 0   
        a = raiz;                  % Caso a função seja maior que 0, a recebe o valor da raiz
    else
        b = raiz;                  % Caso contrário, b recebe o valor da raiz
    end

% Note que a e b tem um valor fixo, até serem mudados pela condição em
% questão

    inter = inter + 1;
    erro = abs(func(raiz)); %  Calculo o valor da função no ponto da raiz em questão
    % Caso seja menor que a tolerânica está na hora de parar!

end

end