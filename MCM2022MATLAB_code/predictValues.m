anPrices=zeros(1826,3);
anPrices(:,1)=1:1826;
for i=1:1826
    if (i>=1)&&(i<=5)
        anPrices(i,2)=0;
    else
        anPrices(i,2)=anBprice(i-5);
    end
end

if (i>=1)&&(i<=20)
    anPrices(i,3)=0;
end
for i=1:1826
    for j=1:1265
        if(bitDate(i)==goldDate(j)&&j>20)
            anPrices(i,3)=anGprice(j-20);
%             disp('if')
%         else
%             anPrices(i,3)=0;
        end
    end
end