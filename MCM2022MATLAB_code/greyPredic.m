anBTC=zeros(1821,1);
diffs=zeros(1821,1);
for i=1:1821
    tmp=zeros(5,1);
    for j=1:5
        tmp(j,1)=bitPrice01(1,i+j);
    end
    [anBTC(i,1),diffs(i,1)]=greymodel(tmp);
end