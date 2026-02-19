function [I, Nvals, xrand1, yrand1, xrand2, yrand2, xrand3, yrand3] = p2_mc_integral()

N1 = 100;
N2 = 1000;
N3 = 10000;
Nvals = [N1,N2,N3];

a = 0;
b = 1;

xrand1 = rand(1,Nvals(1));
yrand1 = rand(1,Nvals(1));

xrand2 = rand(1,Nvals(2));
yrand2 = rand(1,Nvals(2));

xrand3 = rand(1,Nvals(3));
yrand3 = rand(1,Nvals(3));

hits1 = 0;
hits2 = 0;
hits3 = 0;

for i = 1:length(xrand1)
    if(yrand1(i) <= (1/(1+(xrand1(i))^2)))
        hits1 = hits1 + 1;
    end
end

for i = 1:length(xrand2)
    if(yrand2(i) <= (1/(1+(xrand2(i))^2)))
        hits2 = hits2 + 1;
    end
end

for i = 1:length(xrand3)
    if(yrand3(i) <= (1/(1+(xrand3(i))^2)))
        hits3 = hits3 + 1;
    end
end

I1 = (hits1 * (b-a) * max(yrand1))/(N1);
I2 = (hits2 * (b-a) * max(yrand2))/(N2);
I3 = (hits3 * (b-a) * max(yrand3))/(N3);

I = [I1,I2,I3];