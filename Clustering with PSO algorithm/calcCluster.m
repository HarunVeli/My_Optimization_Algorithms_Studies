function [obj, cluster] = calcCluster(pos, data)
% 1. küme
a = pos(1);
b = pos(2);
c = pos(3);
d = pos(4);

% 2. küme
e = pos(5);
f = pos(6);
g = pos(7);
h = pos(8);

% 3. küme
j = pos(9);
k = pos(10);
l = pos(11);
m = pos(12);

dataLength = length(data);
totalDistance = 0;

    for i=1:dataLength
        
        clusters(i, 1) = sqrt((a-data(i,1))^2 + (b-data(i,2))^2 + (c-data(i,3))^2 + (d-data(i,4))^2);
        clusters(i, 2) = sqrt((e-data(i,1))^2 + (f-data(i,2))^2 + (g-data(i,3))^2 + (h-data(i,4))^2);
        clusters(i, 3) = sqrt((j-data(i,1))^2 + (k-data(i,2))^2 + (l-data(i,3))^2 + (m-data(i,4))^2);
        
        [minValue(i, 1), cluster(i, 1)] = min(clusters(i, :)); % kümelerinide al
        
        %Toplam uzaklýk
        totalDistance = totalDistance + minValue(i, 1);
        
    end

    obj = totalDistance;
end

