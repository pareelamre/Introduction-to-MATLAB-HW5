function vacay = holiday(month,day)

vacay = false;
if month == 1 && day == 1
    vacay = true;
elseif month == 7 && day == 4
    vacay = true;
elseif month == 12 && day == 25
    vacay = true;
elseif month == 12 && day == 31
    vacay = true;
end