R = 4;%Krökningsradie
L = 10;%Längden längs den optiska axen
T = 5;%Linsens tjocklek
H = 3;%Höjden över optiska axen

x = [0 2*L];
y = [0 0];
plot(x,y,'k');
grid on
hold on

plot(0,H,'ko');

th1 = linspace( (2*pi)/3, (4*pi)/3, 100);
x1 = R*cos(th1)+(L+R);
y1 = R*sin(th1);

plot(x1,y1,'k'); axis equal;

th2 = linspace( pi/3, -pi/3, 100);
x2 = R*cos(th2)+(L+T-R);
y2 = R*sin(th2);

plot(x2,y2,'k'); axis equal;
hold off
