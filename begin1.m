clear
clc

ship_num=2;    %���ó�ͻ��������
%%
t_collsion=(randi(11,1)-6)*50+1250;         %������ײʱ��1000��1500��ʱ�� ��
ship_speed=randi(7,ship_num,1)+11;          %���ɳ�ʼ���ߵ���ײ����ٶȣ�[12,18] ��λ ����/h  1����=1.852ǧ��
ship_line=ship_speed*1852*t_collsion/3600;  %����ײ��ĺ��߳��ȣ���λ m
ship_angle=randperm(360,ship_num);          %���ɳ�ʼ���ߵ���ײ����y������ĽǶȣ����ظ� ��λ��

%�Ƕ�ת��Ϊpi�ı�ʾ
ship_angle_ji= ship_angle*pi/180;
%������ת��Ϊ��������
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
%������ship_num����ͻ���ߣ�boat�����д���˺��ߵĳ�ʼλ��x,y���ٶȺͺ���(����������Ϊ0��)������ʱ�䡢��������
%%
t=2500;    %�趨����ʱ��
for i=2:t
    
    for j=1:ship_num
    




    end
    
    
    
end
%%