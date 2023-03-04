togetherP=zeros(1245,2);
for i=1:1826
    if (arealPrices(i,3)~=0)
        for j=1:1245
            if (togetherP(j)==0&&togetherP(j+1)==0)
                togetherP(j,1)=arealPrices(i,2);
                togetherP(j,2)=arealPrices(i,3);
                break
            elseif (j==1245)
                togetherP(j,1)=arealPrices(i,2);
                togetherP(j,2)=arealPrices(i,3);
                break
            end
        end
    end
end