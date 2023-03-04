function buyB(date)
global money;
if (money(date,1)<200)
    tmp=money(date,1);
    money(date,1)=money(date,1)-tmp;
    money(date,3)=money(date,3)+0.98*tmp;
end
if(money(date,1)>=200 && money(date,1)<=400)
    tmp=200;
    money(date,1)=money(date,1)-tmp;
    money(date,3)=money(date,3)+0.98*tmp;
end
if(money(date,1)>400)
    tmp=money(date,1)/2;
    money(date,1)=money(date,1)-tmp;
    money(date,3)=money(date,3)+0.98*tmp;
end