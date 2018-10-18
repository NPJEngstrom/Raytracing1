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

ray1 = fplot(@(x) K1*(x) + H,[0,xi_1], 'r');axis equal;
ray2 = fplot(@(x) K2*(x) + H,[0,xi_2], 'b');axis equal;
ray3 = fplot(@(x) K3*(x) + H,[0,xi_3], 'g');axis equal;

xi_1 = (-H*K1 + L + R - sqrt(-H^2 - 2*H*K1*L - K1^2 * L^2 - 2*H*K1*R - 2*K1^2 *L*R + R^2))/(1 + K1^2);
xi_2 = (-H*K2 + L + R - sqrt(-H^2 - 2*H*K2*L - K2^2 * L^2 - 2*H*K2*R - 2*K2^2 *L*R + R^2))/(1 + K2^2);
xi_3 = (-H*K3 + L + R - sqrt(-H^2 - 2*H*K3*L - K3^2 * L^2 - 2*H*K3*R - 2*K3^2 *L*R + R^2))/(1 + K3^2);

yi_1 = (K1*(xi_1) + H); 
yi_2 = (K2*(xi_2) + H);
yi_3 = (K3*(xi_3) + H);
G = xi_1;
J = xi_2;
D = xi_3;
plot(G,yi_1,'ko');axis equal;
plot(J,yi_2,'ko');axis equal;
plot(D,yi_3,'ko');axis equal;