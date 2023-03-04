anrate=zeros(1825,3);
for i=1:1825
    anrate(i,1)=i;
    if anPrices(i,2)==0
        anrate(i,2)=1;
    else
        anrate(i,2)=anPrices(i+1,2)/anPrices(i,2);
    end

    if anPrices(i,3)==0
        anrate(i,3)=1;
    else
        anrate(i,3)=anPrices(i+1,3)/anPrices(i,3);
    end
end