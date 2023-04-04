function [pos, vel] = DvKalman(z)
%
%

persistent A H Q R
persistent x P
persistent firstRun

if isempty(firstRun)
    firstRun=1;
    dt = 0.1;

    A = [1 dt;
         0  1];
    H = [1 0];

    Q = [1 0;
        0 3];
    R = 10;
    
    x = [0 20]';
    P = 5*eye(2);
end

xp = A*x;                        % 2x1
Pp = A*P*A'+Q;                   % 2x2

K = Pp*H'*inv(H*Pp*H'+R);        % 2x1/상수

x = xp+K*(z-H*xp);               % 2x1
P = Pp-K*H*Pp;                   % 2x2

pos=x(1);                           
vel=x(2);
