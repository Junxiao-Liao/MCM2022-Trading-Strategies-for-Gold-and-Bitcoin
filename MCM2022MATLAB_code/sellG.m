function sellG(date)
global money;
if (money(date,2)<200)
end
if(money(date,2)>=200 && money(date,2)<=400)
    tmp=money(date,2)-200;
    money(date,1)=money(date,1)+0.99*tmp;
    money(date,2)=money(date,2)-tmp;
end
if(money(date,2)>400)
    tmp=money(date,2)/2;
    money(date,1)=money(date,1)+0.99*tmp;
    money(date,2)=money(date,2)-tmp;
end