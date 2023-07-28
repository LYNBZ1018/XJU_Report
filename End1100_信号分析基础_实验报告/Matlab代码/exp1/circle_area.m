function res = circle_area(r)
    if r <= 0
        error('The radius is negative number');
    end
    
    res = pi * r * r;
end