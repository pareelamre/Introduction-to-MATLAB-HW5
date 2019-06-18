function output = exp_average(in,bin)

persistent out;
persistent b;


if nargin == 2
    
    b = bin;
    out = in;
    output = out;
end

if nargin == 1 
    
    out = b*in + (1-b)*out;
    output = out;
end

if isempty(output) && nargin == 1
    
        b = 0.1;
        out = in;
        output = out;
    
end