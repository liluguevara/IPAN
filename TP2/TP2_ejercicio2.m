
for k = 0:1 % k = 0: analiza aproximandose a cero, k = 1 aproximandose a pi.  
    x = k*pi; 
    tmp = 1;
    for k1 = 1:8
        tmp = tmp*0.1; 
        x1 = x + tmp;
        fprintf('En x = %10.8f, \n', x1)
        fprintf('f1(x) = %18.12e; f2(x) = %18.12e \n', f1(x1),f2(x1));
    end
end
