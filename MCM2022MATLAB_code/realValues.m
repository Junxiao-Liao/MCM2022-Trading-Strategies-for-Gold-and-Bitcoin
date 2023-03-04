arealPrices=zeros(1826,3);
arealPrices(:,1)=1:1826;
for i=1:1826
    if (i>=1)&&(i<=5)
        arealPrices(i,2)=0;
    else
        arealPrices(i,2)=bitPrice(i-5);
    end
end

if (i>=1)&&(i<=20)
    arealPrices(i,3)=0;
end
for i=1:1826
    for j=1:1265
        if(bitDate(i)==goldDate(j)&&j>20)
            arealPrices(i,3)=goldPrice(j-20);
%             disp('if')
%         else
%             arealPrices(i,3)=0;
        end
    end
end