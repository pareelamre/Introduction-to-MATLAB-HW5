function dd = day_diff(month1,day1,month2,day2)

month = [31 28 31 30 31 30 31 31 30 31 30 31];
if ~isscalar(month1) || ~isscalar(month2) || ~isscalar(day1) || ~isscalar(day2)
    dd = -1;
    return
end
if month1 <= 0 || month2 <= 0 || day1 <= 0 || day2 <= 0
    dd = -1;
    return
end
if month1 ~= fix(month1) || month2 ~= fix(month2) || day1 ~= fix(day1) || day2 ~= fix(day2)
    dd = -1;
    return;
end

m1 = month(month1);
m2 = month(month2);



    
if month1 == month2
    dd = abs(day1 - day2);
end
if abs(month1 - month2) == 1
    if month1 < month2
        dd = m1 - day1 + day2;
    end
    if month2 < month1
        dd = m2 - day2 + day1;
    end
else
    if month1 < month2
        dd = m1 - day1 + sum(month((month1 + 1):(month2 - 1))) + day2;
    end
    if month2 < month1
        dd = m2 - day2 + sum(month((month2 + 1):(month1 - 1))) + day1;
    end

    
end
if day1 > 31 || day2 > 31
    dd = -1;
end
if (month1 == 2 && day1 == 29) || (month2 == 2 && day2 == 29)
    dd = -1;
    
end
if (m1 < day1) || (m2 < day2)
    dd = -1;
end

end

    