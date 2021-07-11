clc
clear
z=zeros(1,1);


v1=[1,0];
v2= [2,0];
if ((dot(v1,v2)/ norm(v1) / norm(v2))==1)
    z(1,1) = 1 ;    % 共线点积为|v1||v2|
else
    z(1,1)= -1;
end