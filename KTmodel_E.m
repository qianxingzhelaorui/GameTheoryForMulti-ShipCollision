function dx = KTmodel_E(tt,x)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
% global k t r s ke te
 k = 0.335;
 t = 23.348;
% k=3*10^(-6)*v^2+0.032*v+0.0001;
% t=13.192*v^2-313.67*v+2049.9;

r = -0.603;
s = 0.157;
ke = 1;
te = 0.69;
dx = zeros(4,1);
dx(1) = x(2);
dx(2) = (k/t)*(x(3)+r)-(x(2)+s*x(2)^3)/t;
dx(3) = -(x(3)/te)+(ke*x(4))/te;
dx(4) = 0;
dx = [dx(1);dx(2);dx(3);dx(4)];
end