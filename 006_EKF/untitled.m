function [pos, vel, alt] = RadarEKF(z,dt)
%
%

persistent A Q R
persistent x P
persistent firstRun

if isempty(firstRun)
    firstRun=1
    A = [0 1 0;
         0 0 0
         0 0 0];
    Q = [0 0 0;
         0 0.001 0;
         0 0 0.001];
    R = 10;

    x = [0 90 1100]; %임의의 초기값
    P = 10*eye(3);  

end

H = Hjacob(x)

xp = A*x;           %3X1
Pp = A*P*A'+Q;      %3X3

K = Pp*H'*inv(H*Pp*H'+R); %3X1

x = xp+K*(z-H*xp); % 3X1
P = Pp-K*H*Pp; %3X3

pos = x(1);
vel = x(2);
alt = x(3);

function zp = hx(xhat)
%
%
x1 = xhat(1); %물체와 수평거리
x3 = xhat(3); %물체의 고도

zp = sqrt(x1^2+x3^2);%피타고라스 공식을 사용한 레이더와 물체의 직선 거리

function H = Hjacob(xp)
%
%
H =zeros(1,3);

x1 = xp(1);
x3 = xp(3);

H(1) = x1 / hx(xp);
H(2) = 0;
H(3) = x3 / hx(xp);



