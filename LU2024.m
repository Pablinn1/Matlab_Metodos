function x = LU2024(A,b)
%Metodo de Decomposição LU sem pivotação
% Programado com base em Chapra
%   x = LU2024(A,b)
% dados de entrada:   A = matriz de coeficientes
%                     b = vetor de constantes
% saída do resultado: x = vetor de variáveis 
%
[nlinhas,ncolunas] = size(A);
L=eye(nlinhas,ncolunas);
% Eliminação progressiva
for k = 1:nlinhas-1
  for i = k+1:nlinhas
    fator = A(i,k)/A(k,k);    
    A(i,k:ncolunas) = A(i,k:ncolunas)- fator*A(k,k:ncolunas);
    A(i,k)= fator;                          % LINHA ACRECENTADA
  end
end
% Substituição Progressiva
y = zeros(nlinhas,1);                       % LINHA ACRECENTADA
for i = 1:nlinhas                         % LINHA ACRECENTADA
    y(i) = (b(i)-A(i,1:i-1)*y(1:i-1));      % LINHA ACRECENTADA
end                                         % LINHA ACRECENTADA 
% Substituição Regressiva
x = zeros(nlinhas,1);
for i = nlinhas:-1:1
    x(i) = (y(i)-A(i,i+1:nlinhas)*x(i+1:nlinhas))/A(i,i);
end
