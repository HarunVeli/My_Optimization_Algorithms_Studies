% derste yap�lan kod

clc;
clear all;

funcName = 'calcCluster';
popSize = 100; 
maxIteration = 5000;
D = 12; % 12 de�er �retilir 3 k�me 4 er nitelikten hangi k�meye daha yak�n oldu�u bulunmaya �al���l�r
alt = 0;
ust = 10;

run = 1;

for i=1:run
    [obj(i, 1), pos(i, :), cnvg(i, :), clusters(:, i)] = pso_pro_func(funcName, popSize, maxIteration, D, alt, ust);
end


% Ort = mean(cnvg);

% funcName = 'ackley';
% popSize = 50;
% maxIteration = 1000;
% D = 2;
% alt = -30;
% ust = 30;
% pso_pro_func(funcName, popSize, maxIteration, D, alt, ust);