function dy = Untitled(t,y)
a=0.1;
k=1;
k1 = -7;
k2 = 5;
T=0.5;
SIGMA=sqrt(2*(a/(1+a^2))*k*T/(sqrt(y(1).^2 + y(2).^2 + y(3).^2)));
MU = 0;
% A=-1;
% B=1;
% Rx = unifrnd(A,B);
% Ry = unifrnd(A,B);
% Rz = unifrnd(A,B);
Rx = normrnd(MU,SIGMA);
Ry = normrnd(MU,SIGMA);
Rz = normrnd(MU,SIGMA);


Bx=Rx;
By=Ry+5;
Bz=Rz;
%By=By1+R;
%Bz=Bz1+R;
M = (sqrt(y(1)^2+y(2)^2+y(3)^2));


    dy = zeros(3,1);    % a column vector
    dy(1) = (-2*k2*y(3)+Bz)*y(2) - (-2*k1*y(2)+By)*y(3) - (a/M)*((-2*k1*y(2)+By)*y(1)*y(2) - Bx*y(2)^2 + (-2*k2*y(3)+Bz)*y(1)*y(3) - Bx*y(3)^2);
    dy(2) = -(-2*k2*y(3)+Bz)*y(1) + Bx*y(3) - (a/M)*(-(-2*k1*y(2)+By)*y(1)^2 + Bx*y(1)*y(2) + (-2*k2*y(3)+Bz)*y(2)*y(3) - (-2*k1*y(2)+By)*y(3)^2);
    dy(3) = (-2*k1*y(2)+By)*y(1) - Bx*y(2) - (a/M)*(-(-2*k2*y(3)+Bz)*y(1)^2 - (-2*k2*y(3)+Bz)*y(2)^2 + Bx*y(1)*y(3) + (2*k1*y(2)+By)*y(2)*y(3));
%Eavg = sqrt(y(1)^2+y(2)^2+y(3)^2)*sqrt(Bz^2+Bx^2+By^2) - (y(1)*Bx + y(2)*By + y(3)*Bz)
end
