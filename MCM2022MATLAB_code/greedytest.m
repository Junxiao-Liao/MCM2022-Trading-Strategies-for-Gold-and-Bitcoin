% function gain=greedy(anrate,realprices,gdecrease,bincrease,bdecrease,gVaRup,gVaRlow)
% % function dealG(date,anrate,gdecrease)
% % function dealB(date,anrate,bincrease,bdecrease)
% % function VdealG(date,realprices,gVaRup,gVaRlow)
result=zeros(250000,6);
for gdecrease=1:0.01:1.10
    for bincrease=1:0.01:1.10
        for bdecrease=1:0.01:1.10
            for gVaRup=50:100
                for gVaRlow=0:50
                    result(gVaRlow+gVaRup*50+bdecrease*50*50+bincrease*50*50*10+gdecrease*50*50*10*10,1)=...
                        greedy(anrate,realprices,gdecrease,bincrease,bdecrease,gVaRup,gVaRlow);
                    result(gVaRlow+gVaRup*50+bdecrease*50*50+bincrease*50*50*10+gdecrease*50*50*10*10,1)=...
                        gdecrease;
                    result(gVaRlow+gVaRup*50+bdecrease*50*50+bincrease*50*50*10+gdecrease*50*50*10*10,1)=...
                        bincrease;
                    result(gVaRlow+gVaRup*50+bdecrease*50*50+bincrease*50*50*10+gdecrease*50*50*10*10,1)=...
                        bdecrease;
                    result(gVaRlow+gVaRup*50+bdecrease*50*50+bincrease*50*50*10+gdecrease*50*50*10*10,1)=...
                        gVaRup;
                    result(gVaRlow+gVaRup*50+bdecrease*50*50+bincrease*50*50*10+gdecrease*50*50*10*10,1)=...
                        gVaRlow;
                end
            end
        end
    end
end