function payment = fare(distance,age)
dist = round(distance);
if dist >=0 && dist <= 1
    payment = 2;
else
    if dist > 1 && dist <=10
        payment = 2 + (dist - 1)*0.25;
    end

    if dist > 10
        payment = 4.25 + (dist - 10)*0.1;
    end
end

if age >= 60 || age <= 18
    payment = payment*0.8;
end    