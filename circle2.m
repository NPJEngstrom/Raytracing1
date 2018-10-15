function g = circle2(L,T,R)
hold on
th = linspace( pi/3, -pi/3, 100);
xunit = R * cos(th) + (L+T-R);
yunit = R * sin(th);
g = plot(xunit, yunit,'k'); axis equal;
hold off