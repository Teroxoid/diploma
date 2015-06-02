options = odeset('RelTol',1e-5,'AbsTol',[1e-4 1e-4 1e-4]);

global random_var_Rx;
global random_var_Ry;
global random_var_Rz;
global span;

start_time = 0;
end_time = 5;

span = start_time:0.01:end_time;
random_var_Rx = [];
random_var_Ry = [];
random_var_Rz = [];

[T,Y] = ode45(@Untitled, span, [0.86023252670426267717294735350497 0.5 0.1],options);


k=-2;
k1 = -7;
k2 = 5;
Bx1 = 0;
By1 = 5;
Bz1 = 0;
T = 0.5;
figure, plot3(Y(:,1), Y(:,2), Y(:,3))
grid on;
xlabel('My');
ylabel('Mx');
zlabel('Mz');

Eavg = sqrt(Y(:, 1).^2+Y(:, 2).^2+Y(:, 3).^2).*sqrt((-2.*k2.*Y(:,3)).^2+(Bx1).^2+(-2.*k1.*Y(:,2)).^2) - (Y(:, 1).*(Bx1) + Y(:, 2).*(-2.*k1.*Y(:,2)) + Y(:, 3).*(-2.*k2.*Y(:,3)));
%Eavg = sqrt(Y(:, 1).^2+Y(:, 2).^2+Y(:, 3).^2)*sqrt(Bz1.^2+Bx1.^2+By1.^2) - (Y(:, 1).*Bx1 + Y(:, 2).*By1 + Y(:, 3).*Bz1);
%Eavg = sqrt(Y(:, 1).^2+Y(:, 2).^2+Y(:, 3).^2).*sqrt((-2.*k2.*Y(:,3) + R).^2+(Bx1+R).^2+(-2.*k1.*Y(:,2)+R).^2) - (Y(:, 1).*(Bx1+R) + Y(:, 2).*(-2.*k1.*Y(:,2)+R) + Y(:, 3).*(-2.*k2.*Y(:,3)+R));
Enorm = T;
Enorm = Enorm*ones( size(Eavg, 1), 1);

figure
hold on;

plot(Eavg,'r')
plot(Enorm, 'b')
figure
hold on;
grid on;
xlabel('t');
ylabel('M');
plot(Y(:,1),'r')
plot(Y(:,2),'b')
plot(Y(:,3),'g')
figure
plot(Y(:,2))
figure
plot(sqrt(Y(:,2).^2 + Y(:,1).^2 + Y(:,3).^2))

size(random_var)

%random_var
