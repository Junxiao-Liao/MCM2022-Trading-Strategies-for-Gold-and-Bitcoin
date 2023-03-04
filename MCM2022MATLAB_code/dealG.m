function dealG(date,anrate,gdecrease)
if (date+1)>1825
    return
end
if anrate(date,2)<gdecrease
    if anrate(date+1,2)>gdecrease
        buyG(date);
    end
end