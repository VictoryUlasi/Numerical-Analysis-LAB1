function p3_mc_plot()

[I, Nvals, xrand1, yrand1, xrand2, yrand2, xrand3, yrand3] = p2_mc_integral();

x1 = xrand1;
y1 = yrand1;
N1 = Nvals(1);
fx1 = 1 ./ (1+ x1.^2);
fy1 = sqrt((1./y1)-1);
yhit1 = [];
ymiss1 = [];
xhit1 = [];
xmiss1 = [];

x2 = xrand2;
y2 = yrand2;
N2 = Nvals(2);
fx2 = 1 ./ (1+ x2.^2);
fy2 = sqrt((1./y2)-1);

yhit2 = [];
ymiss2 = [];

xhit2 = [];
xmiss2 = [];

x3 = xrand3;
y3 = yrand3;
N3 = Nvals(3);
fx3 = 1 ./ (1+ x3.^2);
fy3 = sqrt((1./y3)-1);

yhit3 = [];
ymiss3 = [];

xhit3 = [];
xmiss3 = [];

for i = 1:N1

    if( y1(i) <= fx1(i))
        yhit1 = [yhit1 , y1(i)];

    else
        ymiss1 = [ymiss1 , y1(i)];
    end
end

for i = 1:N1

    if( x1(i) <= fy1(i))
        xhit1 = [xhit1 , x1(i)];

    else
        xmiss1 = [xmiss1 , x1(i)];
    end
end

for i = 1:N2

    if( y2(i) <= fx2(i))
        yhit2 = [yhit2 , y2(i)];

    else
        ymiss2 = [ymiss2 , y2(i)];
    end
end

for i = 1:N2

    if( x2(i) <= fy2(i))
        xhit2 = [xhit2 , x2(i)];

    else
        xmiss2 = [xmiss2 , x2(i)];
    end
end

for i = 1:N3

    if( y3(i) <= fx3(i))
        yhit3 = [yhit3 , y3(i)];

    else
        ymiss3 = [ymiss3 , y3(i)];
    end
end

for i = 1:N3

    if( x3(i) <= fy3(i))
        xhit3 = [xhit3 , x3(i)];

    else
        xmiss3 = [xmiss3 , x3(i)];
    end
end

a = figure("Name","N = 100")
plot(xhit1,yhit1, 'o', 'LineStyle', 'none', 'MarkerSize', 8, 'LineWidth',1.5);
hold on
plot(xmiss1,ymiss1, 'or', 'LineStyle', 'none', 'MarkerSize', 8, 'LineWidth',1.5);
plot(x1 , fx1, 'ok')
hold off
saveas(a, 'p3_N100', 'png')

b = figure("Name","N = 1000")
plot(xhit2,yhit2, 'o', 'LineStyle', 'none', 'MarkerSize', 8, 'LineWidth',1.5);
hold on
plot(xmiss2,ymiss2, 'or', 'LineStyle', 'none', 'MarkerSize', 8, 'LineWidth',1.5);
plot(x2 , fx2, 'ok')
hold off
saveas(b, 'p3_N1000', 'png')

c = figure("Name","N = 10000")
plot(xhit3,yhit3, 'o', 'LineStyle', 'none', 'MarkerSize', 8, 'LineWidth',1.5);
hold on
plot(xmiss3,ymiss3, 'or', 'LineStyle', 'none', 'MarkerSize', 8, 'LineWidth',1.5);
plot(x3 , fx3, 'ok')
hold off
saveas(c, 'p3_N10000', 'png')

end