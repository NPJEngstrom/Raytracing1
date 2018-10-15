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

x(1)=0;%linjens startpunkt
y(1)=H;%linjens startpunkt
angle=350;%vinkeln
lineLength=20;%längden på linjen

x(2)=x(1)+lineLength*cosd(angle);%linjens ändpunkt
y(2)=y(1)+lineLength*sind(angle);%linjens ändpunkt
plot(x,y);

circle1(L,T,R)
circle2(L,T,R)

%th1 = linspace( (2*pi)/3, (4*pi)/3, 100);
%x1 = R*cos(th1)+(L+R);
%y1 = R*sin(th1);

%plot(x1,y1,'k'); axis equal;

%th2 = linspace( pi/3, -pi/3, 100);
%x2 = R*cos(th2)+(L+T-R);
%y2 = R*sin(th2);

%plot(x2,y2,'k'); axis equal;
%hold off
