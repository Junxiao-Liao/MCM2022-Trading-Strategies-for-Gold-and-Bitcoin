function sellB(date)
global money;
if (money(date,3)<200)
%         disp('case1')
end
if(money(date,3)>=200 && money(date,3)<=400)
    tmp=money(date,3)-200;
    money(date,1)=money(date,1)+0.98*tmp;
    money(date,3)=money(date,3)-tmp;
%     disp('case2')
end
if(money(date,3)>400)
    tmp=money(date,3)/2;
    money(date,1)=money(date,1)+0.98*tmp;
    money(date,3)=money(date,3)-tmp;
%     disp('case3')
end