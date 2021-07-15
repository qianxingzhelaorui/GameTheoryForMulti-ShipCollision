% function [c]=compute_c(boat,num)
%% 算例-船舶保持舵角时间tStep后的航向变化
tStart = 0;    % (s) Start time  %开始时间
tEnd   = 10;  % (s) End time    %结束时间
tStep  = 1; % (s) Time step    %时间步长
nStep  = (tEnd - tStart)/tStep + 1;% 步数

ship.heading = zeros(nStep,1);%存储首向角
ship.r = zeros(nStep,1);%存储首向角速度

x10 = 0;%首向初值
x20 = 0;%首向角速度初值
x30 = 0;%实际舵角初值   
x40 = 25;%舵角指令赋值
%% 解算
    for ii = 1:nStep
%         if x10 > 20
%             x40 = -20; %舵角指令赋值
%         end
%         if x10 < -20
%             x40 = 20; %舵角指令赋值
%         end
        [tt,z] = ode45(@KTmodel_E,[(ii-1)*tStep ii*tStep],[x10;x20;x30;x40]);%求解ode45(@m文件，积分区间，初始条件)
        [m,n] = size(z);
        x10 = z(m,1);
        x20 = z(m,2);
        x30 = z(m,3);
        lssvm_ship.heading(ii,1) = x10;
        lssvm_ship.r(1,ii) = x20;
        lssvm_ship.rudder(1,ii) = x30;
    end
   %% 显示
   figure(1)
plot(1:tEnd/tStep+1, lssvm_ship.heading ,'r-','LineWidth',2);
grid minor;%画网格
xlabel('t/s (-)');
ylabel('heading/deg (-)');
title('Ship Course');
%    end