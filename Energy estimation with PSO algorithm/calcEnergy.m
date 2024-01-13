function [obj] = calcEnergy(pos, data)

a = pos(1);
b = pos(2);
c = pos(3);
d = pos(4);
e = pos(5);

dataLength = length(data);
totalError = 0;
% for i=1:dataLength
%     objectValue(i, 1) = (data(i,6) - a*data(i,2)+b*data(i,3)+c*data(i,4)+d*data(i,5)+e) * ...
%         (data(i,6) - a*data(i,2)+b*data(i,3)+c*data(i,4)+d*data(i,5)+e);
% end
% 
% obj = mean(objectValue);


    for i=1:dataLength
        realObj = data(i,6);
        guessObj = a*data(i,2)+b*data(i,3)+c*data(i,4)+d*data(i,5)+e;
        
        difference = realObj - guessObj;
        objectValue(i, 1) = difference * difference;
        totalError = totalError + objectValue(i, 1);
        
    end

    obj = totalError;

end

% function [obj] = pso_pro_objfunc(pos)
% 
%     a = pos(1);
%     b = pos(2);
%     c = pos(3);
%     d = pos(4);
%     e = pos(5);
%     
%     % döngüyle tüm deðerler gezilip aðýrlýk deðerleriyle gereli hesaplamalar yapýlýp ortalamasý alýnýp geri gönderilecek
%     % gerçekle tamin ettiðim deðer arasýndaki farký alýp karelerinide alýp onlarýn hepsini
%     % toplayýp ortalamasýný alýnca toplan hatayý bulmuþ olacaksýn
%     obj = (x-3.16)^2 + (y+7.98)^2 + 5;
% 
% end

