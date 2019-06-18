function [p q r] = sort3(n)
a = n(1);
b = n(2);
c = n(3);
if a >= b && a >= c
    r = a;
    if b >= c
        q = b;
        p = c;
    else
        q = c;
        p = b;
    end
end
if b >= c && b >= a
        r = b;
        if a >= c
            q = a;
            p = c;
        else
            q = c;
            p = a;
        end
end
if c >= a && c >= b
        r = c;
    
    if b >= a
        q = b;
        p = a;
    else
        q = a;
        p = b;
    end

end    


    