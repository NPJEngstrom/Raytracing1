R = 4;%Krökningsradie
L = 10;%Längden längs den optiska axen
T = 5;%Linsens tjocklek
H = 3;%Höjden över optiska axen
K1 = -0.1;%Ray lutning 1
K2 = -0.2;%Ray lutning 2
K3 = -0.3;%Ray lutning 3

x1 = [0 2*L];
y1 = [0 0];
plot(x1,y1,'k');axis equal;
grid on
hold on

plot(0,H,'ko');axis equal;

%th = linspace( (2*pi)/3, (4*pi)/3, 1000);
%x1 = R * cos(th) + (L+R);
%y1 = R * sin(th);
%Lens1 = plot(x1, y1,'k'); axis equal;

Lens1 = fplot(@(x) (sqrt(R.^2-(x-(L+R)).^2)),[0,(L+R/2)],'k'); axis equal;
Lens2 = fplot(@(x) (-sqrt(R.^2-(x-(L+R)).^2)),[0,(L+R/2)],'k'); axis equal;
Lens3 = fplot(@(x) (sqrt(R.^2-(x-(L+T-R)).^2)),[(L+T-R+R/2),(L+T)],'k'); axis equal;
Lens4 = fplot(@(x) (-sqrt(R.^2-(x-(L+T-R)).^2)),[(L+T-R+R/2),(L+T)],'k'); axis equal;

%th = linspace( pi/3, -pi/3, 100);
%x2 = R * cos(th) + (L+T-R);
%y2 = R * sin(th);
%Lens2 = plot(x2, y2,'k'); axis equal;

ray1 = fplot(@(x) K1*(x) + H,[0,20], 'r');axis equal;
ray2 = fplot(@(x) K2*(x) + H,[0,20], 'b');axis equal;
ray3 = fplot(@(x) K3*(x) + H,[0,20], 'g');axis equal;

y2 = K1*(x) + H;
y6 = 0;
xi_1 = (sqrt(R.^2-(y2-y6).^2)+(L+R));
yi_1 = K1*(xi_1) + H; 
plot(xi_1,yi_1,'ko');




