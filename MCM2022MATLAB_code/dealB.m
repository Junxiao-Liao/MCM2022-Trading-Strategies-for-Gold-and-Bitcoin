function dealB(date,anrate,bincrease,bdecrease)
if (date)>1825
    return
end
if anrate(date,3)>bincrease
    buyB(date);
end
if anrate(date,3)<bdecrease
    sellB(date);
end
