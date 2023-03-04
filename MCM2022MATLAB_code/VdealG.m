function VdealG(date,realprices,gVaRup,gVaRlow)
%求VaR
if date<=50
    return
end
past=realprices((date-50):1:date,2);
PortRisk=std(past);
PortReturn=0.01;
VaR = portvrisk(PortReturn,PortRisk);
if VaR>gVaRup
    buyG(date)
end
if VaR<gVaRlow
    sellG(date)
end