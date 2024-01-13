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
%     % d�ng�yle t�m de�erler gezilip a��rl�k de�erleriyle gereli hesaplamalar yap�l�p ortalamas� al�n�p geri g�nderilecek
%     % ger�ekle tamin etti�im de�er aras�ndaki fark� al�p karelerinide al�p onlar�n hepsini
%     % toplay�p ortalamas�n� al�nca toplan hatay� bulmu� olacaks�n
%     obj = (x-3.16)^2 + (y+7.98)^2 + 5;
% 
% end

