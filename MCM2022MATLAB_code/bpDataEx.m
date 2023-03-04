% data=zeros((1265-5),6);
% for n = 1:(1265-5)
%     for k = 0:5
%     data(n,k+1)=goldPrice01(1,n+k);
%     end
% end

data=zeros((1265-20),(21));
for n = 1:(1265-20)
    for k = 0:20
    data(n,k+1)=goldPrice01(1,n+k);
    end
end