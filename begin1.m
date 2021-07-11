clear
clc

ship_num=2;    %设置冲突航线数量
%%
t_collsion=(randi(11,1)-6)*50+1250;         %设置碰撞时间1000—1500，时间 秒
ship_speed=randi(7,ship_num,1)+11;          %生成初始航线到碰撞点的速度，[12,18] 单位 海里/h  1海里=1.852千米
ship_line=ship_speed*1852*t_collsion/3600;  %到碰撞点的航线长度，单位 m
ship_angle=randperm(360,ship_num);          %生成初始航线到碰撞点与y轴正向的角度，不重复 单位°

%角度转化为pi的表示
ship_angle_ji= ship_angle*pi/180;
%极坐标转化为横纵坐标
x=sin(ship_angle_ji);
y=cos(ship_angle_ji);
boat=zeros(ship_num,6);
for ship_create=1:ship_num
    
    boat(ship_create,1)=x(1,ship_create)*ship_line(ship_create,1);
    boat(ship_create,2)=y(1,ship_create)*ship_line(ship_create,1);
    boat(ship_create,3)=ship_speed(ship_create,1);
    tem_0=ship_angle(1,ship_create);
    boat(ship_create,4)=tem_0;
    boat(ship_create,5)=floor(ship_speed(ship_create,1)/4+4);
    boat(ship_create,6)=6*1852;
end
%生成了ship_num条冲突航线，boat矩阵中存放了航线的初始位置x,y，速度和航向(以正北方向为0度)、决策时间、船舶动界
%%
t=2500;    %设定运算时间
for i=2:t
    
    for j=1:ship_num
    




    end
    
    
    
end
%%