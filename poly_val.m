function  p = poly_val(c0,c,x)

if isempty(c)
    p = c0;
    return
end

[m n] = size(c);
if m > 1
    c = c';
end

if isscalar(c)
    p = c0 + c*x;
    return
end

p = c0 + sum(c.*x.^(1:length(c)));