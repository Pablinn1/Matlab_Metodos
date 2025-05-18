function x = Gauss2024(A,b)
% Metodo de Eliminação de Gauss sem pivotação
% Programado com base em Chapra
%   x = Gauss2024(A,b)
% dados de entrada:   A = matriz de coeficientes
%                     b = vetor de constantes
% saída do resultado: x = vetor de variáveis 
%
% Concatenação da matriz A com o vetor b
Ab = [A b];   
[nlinhas,ncolunas] = size(Ab);
% Eliminação progressiva
for k = 1:nlinhas-1
  for i = k+1:nlinhas
    factor = Ab(i,k)/Ab(k,k);
    Ab(i,k:ncolunas) = Ab(i,k:ncolunas)-factor*Ab(k,k:ncolunas);
  end
end
% Substituição regressiva
x = zeros(nlinhas,1);
x(nlinhas) = Ab(nlinhas,ncolunas)/Ab(nlinhas,nlinhas);
for i = nlinhas-1:-1:1
  x(i) = (Ab(i,ncolunas)-Ab(i,i+1:nlinhas)*x(i+1:nlinhas))/Ab(i,i);
end