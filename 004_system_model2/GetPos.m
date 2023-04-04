function [z,a] = GetPos()
%
%
persistent Velp Posp

if isempty(Posp)
    Posp = 0;
    Velp = 80;
end

dt = 0.1;

w = 0+ 10*randn;
v = 0+10*randn;

z = Posp + Velp*dt+v;

Posp = z-v; % 진짜위치
Velp = 80+w; %진짜 속도.
a= Velp;
