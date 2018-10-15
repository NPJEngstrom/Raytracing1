function h = circle1(L,T,R)
hold on
th = linspace( (2*pi)/3, (4*pi)/3, 100);
xunit = R * cos(th) + (L+R);
yunit = R * sin(th);
h = plot(xunit, yunit,'k'); axis equal;
hold off