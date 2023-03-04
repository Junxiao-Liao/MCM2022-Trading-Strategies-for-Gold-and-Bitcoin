function calc(rate,date)
    global money;
    %每天先传入值
    money(date,1)=money(date-1,1);
    money(date,2)=money(date-1,2);
    money(date,3)=money(date-1,3);
    %由传入值更新
    money(date,1)=money(date,1);
    money(date,2)=money(date,2)*rate(date-1,2);
    money(date,3)=money(date,3)*rate(date-1,3);