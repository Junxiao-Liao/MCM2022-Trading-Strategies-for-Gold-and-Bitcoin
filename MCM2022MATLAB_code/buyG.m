function buyG(date)
global money;
if (money(date,1)<200)
    tmp=money(date,1);
    money(date,1)=money(date,1)-tmp;
    money(date,2)=money(date,2)+0.99*tmp;
end
if(money(date,1)>=200 && money(date,1)<=400)
    tmp=200;
    money(date,1)=money(date,1)-tmp;
    money(date,2)=money(date,2)+0.99*tmp;
end
if(money(date,1)>400)
    tmp=money(date,1)/2;
    money(date,1)=money(date,1)-tmp;
    money(date,2)=money(date,2)+0.99*tmp;
end