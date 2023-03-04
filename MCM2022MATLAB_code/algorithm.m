function gain=algorithm(anrate,realprices,gdecrease,bincrease,bdecrease,gVaRup,gVaRlow)
% function dealG(date,anrate,gdecrease)
% function dealB(date,anrate,bincrease,bdecrease)
% function VdealG(date,realprices,gVaRup,gVaRlow)
global money;
money(1,1)=1000;
for date=1:1826
    dealB(date,anrate,bincrease,bdecrease);
    dealG(date,anrate,gdecrease);
        if mod(date,50)==0
            VdealG(date,realprices,gVaRup,gVaRlow);
        end
end
gain=money(1826,1)+money(1826,2)+money(1826,3);