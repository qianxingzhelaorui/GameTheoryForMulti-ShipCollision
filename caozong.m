function [ d ] = caozong( boat,num )
%CAOZONG 此处显示有关此函数的摘要
%   输入船舶当前位置和速度航向后，计算船舶在决策时间后可达到的位置
weizhi=boat(num,1:6);
x=weizhi(1,1);
y=weizhi(1,2);
v=weizhi(1,3);
c=weizhi(1,4);
t=weizhi(1,5);

Ks=0.48;
Ts=216.58;
c_zhuan=Ks*c0*(t-Ts+Ts*exp(t/Ts));  %c_zhuan为转向后角度、Ks和Ts为船舶固定的时间常数、t为时间,c0为舵角



end

