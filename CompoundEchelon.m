function int_f = CompoundEchelon( f, a, b, m )
%%复合梯形公式
    h = (b - a) / m;
    int_f = 0;
    if m >= 2
        for i = 1 : m-1
           int_f = int_f + 2 * f(a + h * i); 
        end
    end
    int_f = int_f + f(a) + f(b);
    int_f = int_f * h / 2;
end