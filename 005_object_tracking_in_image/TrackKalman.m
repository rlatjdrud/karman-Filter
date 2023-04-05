function [xh, yh] = TrackKalman(xm,ym)
%
%
persistent A H Q R
persistent x P
persistent firstRun

if isempty(firstRun)
    dt = 1;

    firstRun=1;

    A = [1 dt 0 0 
        0 1 0 0
        0 0 1 dt
        0 0 0 1];

    H = [1 0 0 0;
        0 0 1 0];

    Q = 1.0*eye(4);

    R = 50*eye(2);

    x = [0 0 0 0]';
    P = 100*eye(4);

end

xp = A*x;          % 4x1
Pp = A*P*A'+Q;     % 4x4

K = Pp*H'*inv(H*Pp*H'+R); % 4x2

z = [xm ym]';
x = xp+K*(z-H*xp); %%(4X1)+(4X2)*(2X1-2X1)
P = Pp-K*H*Pp;

xh = x(1);
yh = x(3);
