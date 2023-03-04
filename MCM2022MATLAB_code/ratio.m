% gRate=zeros(1264,1);
% for i=1:1264
%     gRate(i)=(goldPrice(i+1)-goldPrice(i))/goldPrice(i);
% end
% bRate=zeros(1264,1);
% for i=1:1825
%     bRate(i)=(bitPrice(i+1)-bitPrice(i))/bitPrice(i);
% end
rate=zeros(1825,3);
for i=1:1825
    rate(i,1)=i;
    rate(i,2)=realprices(i+1,2)/realprices(i,2);
    rate(i,3)=realprices(i+1,3)/realprices(i,3);
end
