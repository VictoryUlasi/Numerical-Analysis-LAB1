function [mean1, mean2, var1, var2, var3, std1, std2, std3] = p1_stats(x)

S = load("lab_data.mat","data");
x = S.data;

mean1 = 0;
for i = 1:length(x)
    mean1 = (mean1 + x(i));
end

mean1 = mean1/length(x);
mean2 = (sum(x) / length(x));
mean3 = mean(x);

var1 = 0;
for i = 1:length(x)
var1 = var1 + (x(i) - mean3)^2;
end

var1 = var1 / (length(x) - 1);
var2 = sum((x - mean3).^2) / (length(x) - 1);
var3 = var(x);

std1 = sqrt(var1);
std2 = sqrt(var2);
std3 = std(x);

end