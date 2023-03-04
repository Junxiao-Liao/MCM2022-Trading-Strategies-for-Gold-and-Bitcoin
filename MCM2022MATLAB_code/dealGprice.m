for i=30:1826
    if(arealPrices(i,3)==0)
        arealPrices(i,3)=arealPrices(i-1,3);
    end
end

for i=30:1826
    if(anPrices(i,3)==0)
        anPrices(i,3)=anPrices(i-1,3);
    end
end