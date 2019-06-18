function eligibility = eligible(v,q)
if v > 88 && q > 88
    avg = (v + q)/2;
    if avg >= 92
        eligibility = true;
    else
        eligibility = false;
    end    
else
    eligibility = false;
end    